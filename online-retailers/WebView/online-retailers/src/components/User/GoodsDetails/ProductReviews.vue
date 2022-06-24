<template>
	<el-col :span="24">
		<comment
			:authorId="authorId"
			:avatar="avatar"
			:label="label"
			:commentList="commentList"
			:commentWidth="commentWidth"
			:commentNum="commentList.length"
			@doSend="doSend"
			@doChidSend="doChildSend">
		</comment>
	</el-col>
</template>

<script>
import comment from 'bright-comment'
import axios from "axios";

export default {
	name: "ProductReviews",
	props: ["GoodsID"],
	components: {
		comment
	},
	data() {
		return {
			authorId: sessionStorage.getItem("userId"),
			avatar: "",
			label: "",
			commentWidth: "90%",
			commentList: [],
		}
	},
	methods: {
		isSpecialCharacter(s) {
			let regEn = /[`~!@#$%^&*()_+<>?:"{}.\/;']/im
			let regCn = /[·！#￥（——）：；“”‘、|《。》？、【】]/im
			if (regEn.test(s) || regCn.test(s)) {
				return true;
			} else {
				return false;
			}
		},
		doSend(content) {
			if (this.isSpecialCharacter(content)) {
				this.$message.error("小调皮！请勿输入特殊字符···");
			} else {
				axios({
					url: "http://localhost:8080/demo/api/ProductReviews/DoSend",
					method: "post",
					data: {
						userID: sessionStorage.getItem("userId"),
						goodsID: this.GoodsID,
						Content: content
					}
				}).then(
					response => {
						if (response.data === true) {
							this.GetCommentList();
							// this.$router.go(0);
						} else {
							this.$message.error("评论失败！请重试！");
						}
					},
					error => {
						this.$message.error("请求失败" + error.message);
					}
				)
			}
		},
		doChildSend(content, commentUserId, pid) {
			axios({
				url: "http://localhost:8080/demo/api/ProductReviews/DoChildSend",
				method: "post",
				data: {
					commentID: pid,
					commentUserID: sessionStorage.getItem("userId"),
					reviewContent: content
				}
			}).then(
				response => {
					if (response.data === true) {
						this.GetCommentList();
					} else {
						this.$message.error("评论失败！请重试！");
					}
				},
				error => {
					this.$message.error("请求失败" + error.message);
				}
			)
		},
		getLocalTime(timeStamp) {
			timeStamp = timeStamp.replace(/[^0-9]/ig, "");
			return new Date(parseInt(Math.abs(timeStamp))).toLocaleString().replace(/:\d{1,2}$/, ' ');
		},
		GetCommentList() {
			axios.get(`http://localhost:8080/demo/api/ProductReviews/CommentList?GoodsID=${this.GoodsID}`).then(
				response => {
					if (response.data !== false) {
						response.data.forEach((item) => {
							let getCommentList;
							if (item.CommentUserID === null) {
								getCommentList = {
									childrenList: [],
									commentUser: {
										avatar: "http://localhost:61124" + item.UserImg,
										id: item.UserID,
										nickName: item.UserAccount
									},
									content: item.Content,
									createDate: this.getLocalTime(item.CommentTime),
									id: item.CommentID
								};
								this.commentList.push(getCommentList);
							} else {
								getCommentList = {
									childrenList: [],
									commentUser: {
										avatar: "http://localhost:61124" + item.UserImg,
										id: item.UserID,
										nickName: item.UserAccount
									},
									content: item.Content,
									createDate: this.getLocalTime(item.CommentTime),
									id: item.CommentID
								};
								axios({
									url: "http://localhost:8080/demo/api/ProductReviews/ChildrenList",
									method: "post",
									data: {
										userID: item.UserID,
										goodsID: this.GoodsID,
										commentID: item.CommentID,
									}
								}).then(
									response => {
										if (response.data !== false) {
											response.data.forEach((item2) => {
												getCommentList.childrenList.push(
													{
														commentUser: {
															avatar: "http://localhost:61124" + item2.ReviewUserImg,
															id: item2.CommentUserID,
															nickName: item2.ReviewUserAccount
														},
														content: item2.ReviewContent,
														createDate: this.getLocalTime(item2.ReviewCommentTime),
														id: item2.CommentUserID,
														targetUser: {
															avatar: "http://localhost:61124" + item2.UserImg,
															id: item2.UserID,
															nickName: item2.UserAccount
														}
													}
												)
											});
										} else {
											// this.$message.error("回复评论列表获取失败");
										}
									},
								)
								this.commentList.push(getCommentList);
							}
							
						});
					} else {
						// this.$message.error("评论列表获取失败");
					}
				},
			)
		}
	},
	mounted() {
		axios.get(`http://localhost:8080/demo/api/UserOrder/UserInfo?userID=${sessionStorage.getItem("userId")}`).then(
			response => {
				if (response.data !== false) {
					this.avatar = "http://localhost:61124" + response.data[0].UserImg;
				} else {
					this.$message.error("用户信息获取失败");
				}
			},
			error => {
				this.$message.error("请求失败" + error.message);
			}
		);
		setTimeout(() => {
			this.GetCommentList();
		}, 100);
	}
}
</script>

<style scoped>

</style>