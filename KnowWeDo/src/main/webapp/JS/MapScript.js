/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
google.charts.load('current', {
    'packages': ['geochart'],
    'mapsApiKey': 'AIzaSyCZ2mjE6eANHAZM586R8KnY2yWcNFA7DX8'
});
google.charts.setOnLoadCallback(drawThailandMap);

function drawThailandMap() {
    var data = google.visualization.arrayToDataTable([
        ['Province', 'Population'],
        ['Bangkok', 5692284], ['Amnat Charoen', 375380], ['Ang Thong', 283568],
        ['BUENG KAN', 418566], ['Buri ram', 1579248], ['Chachoengsao', 695478],
        ['Chai Nat', 332283], ['Chaiyaphum', 1137049], ['Chanthaburi', 527350],
        ['Chiang Mai', 1678284], ['Chiang Rai', 1207699], ['Chon buri', 1421425],
        ['Chumphon', 500575], ['Kalasin', 984907], ['Kamphaeng Phet', 729522], ['Kanchanaburi', 848198],
        ['Khon Kaen', 1790049], ['Krabi', 456811], ['Lampang', 753013],
        ['Lamphun', 405468], ['Loei', 634513], ['Lop buri', 754406],
        ['Mae Hong Son', 248178], ['Maha Sarakham', 960588], ['Mukdahan', 346016],
        ['Nakhon Nayok', 257300], ['Nakhon Pathom', 891071], ['Nakhon Phanom', 713351],
        ['Nakhon Ratchasima', 2620517], ['Nakhon Sawan', 1072756], ['Nakhon Si Thammarat', 1544028],
        ['Nan', 478264], ['Narathiwat', 775799], ['Nong Bua Lam Phu', 508864],
        ['Nong Khai', 517260], ['Nonthaburi', 1173870], ['Pathum Thani', 1075058],
        ['Pattani', 686186], ['Phang Nga', 261370], ['Phatthalung', 520419],
        ['Phayao', 484454], ['Phetchabun', 995807], ['Phetchaburi', 474192],
        ['Phichit', 547543], ['Phitsanulok', 858988], ['Phra Nakhon Si Ayutthaya', 803599],
        ['Phrae', 454083], ['Phuket', 378364], ['Prachin buri', 479314],
        ['Prachuap Khiri Khan', 525107], ['Ranong', 177089], ['Ratchaburi', 853217], ['Rayong', 674393],
        ['Roi Et', 1308318], ['Sa Kaeo', 552187], ['Sakon Nakhon', 1138609],
        ['Samut Prakan', 1261530], ['Samut Sakhon', 531887], ['Samut Songkhram', 194189],
        ['Saraburi', 633460], ['Satun', 312673], ['Sing Buri', 212158], ['Si sa ket', 1465213],
        ['Songkhla', 1401303], ['Sukhothai', 602460], ['Suphan Buri', 849053],
        ['Surat Thani', 1040230], ['Surin', 1391636], ['Tak', 539553], ['Trang', 638746],
        ['Trat', 224730], ['Ubon Ratchathani', 1844669], ['Udon Thani', 1570300],
        ['Uthai Thani', 330179], ['Uttaradit', 460400], ['Yala', 511911], ['Yasothon', 540211]
    ]);
    var options = {
        region: 'TH',
        resolution: 'provinces',
        //displayMode: 'markers',
        colorAxis: {colors: ['#00853f', 'black', '#e31b23']}
    };
    var chart = new google.visualization.GeoChart(document.getElementById('geochart-colors'));

    chart.draw(data, options);
}


