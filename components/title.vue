<template>
	<view class="section-title">
		--{{title}}--
	</view>
</template>

<script>
	export default {
		name:'title',
		props: {
			title: {
				type: String,
				default: '精品考团'
			}
		},
		data() {
			return {

			};
		}
	}
</script>

<style>
.section-title{
	width: 100%;
	height: 80upx;
	line-height: 80upx;
	text-align: center;
	font-weight: 400;
	margin-bottom: -24upx;
}
</style>
