<template>
    <client-only>
        <chart :options="chartOptions" />
    </client-only>
</template>

<script setup lang="ts">
import { Chart } from 'highcharts-vue';
import * as Highcharts from 'highcharts';
import dayjs from 'dayjs';
import 'dayjs/locale/vi';

dayjs.locale('vi');

const priceTs = [
    1686029971000, 1687174577000, 1687516973000, 1688563847000, 1688635409000, 1688711489000, 1689639922000, 1690701772000, 1691016312000,
    1691739068000, 1692906553000, 1694077694000, 1694683479000, 1695301822000, 1696491003000, 1696705615000, 1696808827000, 1697268491000,
    1697365322000, 1697451652000, 1698415404000, 1699499902000, 1699606303000, 1699702544000, 1700792606000, 1700984211000, 1701320363000,
    1702201102000, 1702449529000, 1702556199000, 1703217855000, 1704363612576, 1704483574000, 1704682208000, 1705198052000, 1706386329000,
    1706958955000, 1707263809000, 1707805310000, 1708005598000, 1708917689000, 1709014559452,
];

const prices = [
    381650, 449000, 449000, 579000, 449000, 404100, 449000, 449000, 449000, 669000, 569000, 608790, 608790, 526890, 579000, 579000, 521100, 526890,
    479470, 408590, 579000, 669000, 541890, 669000, 608790, 669000, 608790, 669000, 579000, 526890, 519000, 472290, 472290, 519000, 472290, 409000,
    409000, 579000, 499000, 579000, 521100, 472290,
];

const chartSeries = {
    data: priceTs.map((ts, index) => [ts, prices[index]]),
};

const chartOptions = ref<Highcharts.Options>({
    title: {
        text: undefined,
    },
    chart: {
        type: 'spline',
        height: 300,
    },
    xAxis: {
        labels: {
            formatter: function () {
                return dayjs(this.value).format('DD - MM - YYYY');
            },
            style: {
                fontSize: '11px',
            },
        },
        showFirstLabel: true,
        showLastLabel: true,
        crosshair: true,
    },
    yAxis: {
        title: {
            text: null,
        },
        labels: {
            style: {
                fontSize: '12px',
            },
        },
    },
    legend: {
        enabled: false,
    },
    tooltip: {
        formatter: function () {
            return `<p class="text-center"><span class="text-xs font-bold">Ngày ${dayjs(this.x).format('DD - MM - YYYY')}</span><br/>
<span class="font-bold">${this.y}đ</span></p>`;
        },
        backgroundColor: '#000000',
        style: {
            color: '#ffffff',
        },
    },
    plotOptions: {
        spline: {
            marker: {
                symbol: 'circle',
            },
        },
    },
    colors: ['#BDBDBD'],
    series: [chartSeries as any],
});
</script>
