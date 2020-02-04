<template>
	<view>
		<view class="blank">
			
		</view>
		<view class="foot" @click="apply">
			我要报名
		</view>
	</view>
	
</template>

<script>
	export default {
		name:'foot',
		data() {
			return {
				
			};
		},
		methods:{
			apply(){
				uni.navigateTo({
					url:'/pages/contact/contact'
				})
			}
		}
	}
</script>

<style>
	.blank{
		height: 100upx;
	}
	.foot{
		position: fixed;
		bottom: 0;
		width: 750upx;
		height: 100upx;
		background-color: #4CD964;
		color: #FFFFFF;
		line-height: 100upx;
		font-size: 36upx;
		text-align: center;
	}

</style>
