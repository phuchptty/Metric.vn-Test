<template>
    <div class="mx-6 lg:mx-auto mt-2">
        <div class="text-lg font-medium pb-1 mb-4">Mô tả sản phẩm</div>

        <blockquote>
            <div class="sortContent" :class="isExpanded ? '' : 'hideContent'">
                ⚡️ LƯU Ý QUAN TRỌNG: 🏎Sản phẩm có nhiều phiên bản, quý khách vui lòng đọc kỹ thông tin và chọn phiên bản phù hợp 🏎Sử dụng cho Máy
                tính xách tay / Máy tính bảng / Điện thoại có cổng Type C 🏎Phiên bản (60Hz) hỗ trợ 4K / 60Hz, phiên bản khác hỗ trợ 4K / 30Hz. 🏎Tất
                cả các cổng USB đều hỗ trợ Sạc và Truyền dữ liệu. 🏎Điện thoại di động / máy tính bảng sử dụng hub để đọc dữ liệu hoặc hiển thị mở
                rộng màn hình, thì điện thoại / máy tính bảng đó cần hỗ trợ chức năng OTG. 🏎Do cổng C có nhiều chuẩn khác nhau: vui lòng đảm bảo các
                chuẩn&nbsp;ThunderBolt 3 / USB-C 3.1 Gen 2 để hỗ trợ nhiều màn hình trước khi mua hàng. 🏎Do giới hạn của hệ điều hành,&nbsp;Windows
                hỗ trợ 3 màn hình riêng biệt, Mac không hỗ trợ 3 màn hình riêng biệt, chỉ hỗ trợ mirror mode và dual mode. ⚡️ THÔNG SỐ KỸ THUẬT
                chung: 🏎 Thương hiệu: Baseus 🏎 Cổng vào: Type C 🏎 Màu sắc: Bạc 🏎 Chất liệu: Hợp kim nhôm 🏎 USB 3.0*2: 5Gbps (Max) 🏎 USB 2.0:
                480Mbps 🏎 HDMI*2: 4K@30Hz (Max) 🏎 SD/TF: 104MB/s 🏎 RJ45: 1000Mbps (Max) 🏎 Type-C PD: 100W (Max) 🏎 Input: 5V/3A, 9V/3A, 15V/3A,
                20V/5A 🏎 Output: 5v/0.9A ⚡️ Thông số từng phiên bản: 4.1: USB3.0*4 4.2: USB3.0*3+RJ45:100Mbps 4.3: HDMI (4K30Hz), USB3.0, USB2.0,
                Type C (PD100W) 5.1: HDMI (4K30Hz), USB3.0*3, Type C (PD100W) 5.2: HDMI (4K60Hz), USB3.0*3, Type C (PD100W) 6.1: USB3.0*3+PD*1+SD/TF*1
                6.2: HDMI*2+USB3.0*3+PD*1 6.3: HDMI*1+USB3.0*3+PD*1+VGA*1 6.4: HDMI (4K30Hz), USB3.0*3, RJ-45, Type C (PD100W) 7.1:
                HDMI*1+USB3.0*3+PD*1+VGA*1+RJ45*1 7.2: HDMI*2+USB3.0*3+PD*1+RJ45*1 7.3: HDMI (4K30Hz), USB3.0*3, Type C (PD 100W), Type C (Data),
                SD/TF Card Reader 8.1: HDMI*1+USB3.0*3+PD*1+SD/TF*1+VGA*1 8.2: HDMI*2+USB3.0*3+PD*1+SD/TF*1 8.3: HDMI (4K30Hz), USB3.0*3, RJ-45, SD,
                TF, Type C (PD100W) 9.1: HDMI*2+USB3.0*2+USB2.0*1+PD*1+SD/TF*1+RJ45*1 9.2: HDMI (4K30Hz), VGA, USB3.0*3, RJ-45, SD, TF, Type C
                (PD100W). Hỗ trợ 2 màn hình phản chiếu (Mirror Mode) - 11 in 1: HDMI*2(4K30Hz), VGA, USB3.0*3, RJ-45, SD, TF, Audio Aux 3.5mm, Type C
                (PD100W). Hỗ trợ Window với 3 màn hình riêng biệt, hỗ trợ Mac với 3 màn hình phản chiếu (Mirror Mode). - 12 in 1: HDMI: 8K@30Hz
                (Max.), DP: 8K@30Hz (Max.), USB 3.0*2: 5Gbps (Max.), USB 3.2*2: 10Gbps (Max.), Type-C 3.2: 10Gbps (Max.), Type-C PD: 100W (Max), RJ45:
                10Mbps/100Mbps/1000Mbps, SD/TF: 104MB/s (Max.), Do not support data reading at the same time, 3.5mm Audio: Support headphones, audio
                output. Bản 60Hz bổ sung: - 6 in 1 4K60Hz: HDMI4K@60Hz*1+USB3.0*3+PD*1+RJ45*1 - 8 in 1 4K60Hz USB3.0:
                HDMI4K@60Hz*1+USB3.0*3+PD*1+RJ45*1+SD/TF*1 - 8 in 1 4K60Hz USB3.1: HDMI4K@60Hz*1+USB3.1*3+PD*1+RJ45*1+SD/TF*1 ⚡️ THỜI GIAN BẢO HÀNH:
                🏎Bảo hành chính hãng 12 tháng --------------------------------------------------------------------------- 🔥 Chú Bé Shop - cáp sạc
                laptop, hub chuyển, thiết bị lưu trữ, phụ kiện công nghệ chính hãng 🔥 Chính sách bảo hành: https://chube.vn/chinh-sach-bao-hanh 🔥
                Hotline: 028 9999 8880
            </div>

            <p class="text-primary-500 text-lg underline cursor-pointer mt-5" @click="toggleExpand">
                {{ isExpanded ? 'Thu nhỏ' : 'Xem thêm' }}
            </p>
        </blockquote>
    </div>

    <div class="h-[1px] bg-gray-200 my-8"></div>
</template>

<script setup lang="ts">
const isExpanded = ref(false);

function toggleExpand() {
    isExpanded.value = !isExpanded.value;
}
</script>

<style scoped>
.hideContent:after {
    background: linear-gradient(0deg, hsla(0, 0%, 100%, 0.65), hsla(0, 0%, 100%, 0));
    bottom: 0;
    content: '';
    height: 80px;
    left: 0;
    pointer-events: none;
    position: absolute;
    right: 0;
}

.sortContent {
    position: relative;
    word-wrap: break-word;
    line-height: 2rem;
    transition-duration: 0.5s;
    transition-property: max-height;
    transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
    white-space: pre-wrap;
}

.hideContent {
    max-height: 24rem;
    overflow: hidden;
}
</style>
