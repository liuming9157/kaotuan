<view><swiper indicator-dots="{{true}}" autoplay="{{true}}" interval="{{3000}}" duration="{{1000}}"><block wx:for="{{swiper}}" wx:for-item="item" wx:for-index="index" wx:key="index"><swiper-item><view class="swiper-item"><image class="swiper-image" src="{{item.image}}"></image></view></swiper-item></block></swiper><title vue-id="1" title="SAT考团" bind:__l="__l"></title><block wx:for="{{kaotuanList}}" wx:for-item="item" wx:for-index="index" wx:key="index"><view><uni-card vue-id="{{'2-'+index}}" mode="style" title="{{item.title}}" note="true" extra="{{item.desc}}" thumbnail="{{item.image}}" data-event-opts="{{[['^click',[['goDetail',['$0'],[[['kaotuanList','',index,'id']]]]]]]}}" bind:click="__e" bind:__l="__l" vue-slots="{{['footer']}}"><view slot="footer"><view class="uni-card-footer"><view class="uni-card-text">{{''+item.time+''}}</view><view class="uni-card-text">{{''+item.insurance+''}}</view><view class="uni-card-text">查看详情></view></view></view></uni-card></view></block></view>