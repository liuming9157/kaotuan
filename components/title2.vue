<template>
	<view>
		<view class="section-title2">
			{{title}}
		</view>
	</view>
</template>

<script>
	export default {
		name: 'title2',
		props: {
			title: {
				type: String,
				default: '基本信息'
			}
		},
		data() {
			return {

			};
		}
	}
</script>

<style>
	.section-title2{
		margin: 0 30upx;
		width: 690upx;
		height: 25upx;
		line-height: 25upx;
		padding: 15upx;
		border-left: solid 3px #4CD964;
		
	}

</style>
