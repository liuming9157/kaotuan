<template>
	<view>
		<title2 title='报名方式'></title2>
		<view class="contact-box">
			<view class="contact-text">
				微信客服：liuming9157(7x24小时)
			</view>
			<view class="contact-button" @click="addWeixin">复制后去微信添加</view>
			<view class="contact-text">
				客服电话：010-86466630（工作日9:00-22:00）
			</view>
			<view class="contact-button" @click="makePhone">现在拨打</view>
		</view>

	</view>
</template>

<script>
	import title2 from '../../components/title2.vue'
	export default {
		components: {
			title2
		},
		data() {
			return {

			}
		},
		onLoad() {},
		methods: {
			addWeixin() {
				uni.setClipboardData({
					data: 'liuming9157',
					success() {
						uni.showToast({
							title: '复制成功'
						})
					}
				})
			},
			makePhone() {
				uni.makePhoneCall({
					phoneNumber: '01086466630'
				})
			}
		}
	}
</script>

<style>
	.contact-box {
		margin: 0 30upx;
		padding: 30upx 15upx;
	}

	.contact-text {
		font-size: 32upx;
		margin: 50upx 0;
	}

	.contact-button {
		height: 70upx;
		line-height: 70upx;
		font-size: 32upx;
		background-color: #4CD964;
		color: #FFFFFF;
		border-radius: 15upx;
		text-align: center;
	}
</style>
