import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  // const fitMapToMarkers = (map, markers) => {
  //   const bounds = new mapboxgl.LngLatBounds();
  //   markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  //   map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  // };
  const fitMapToMarker = (map, marker) => {
    const bounds = new mapboxgl.LngLatBounds();
    bounds.extend([ marker.lng, marker.lat ]);
    map.fitBounds(bounds, { padding: 70, zoom: 7, duration: 3000 });
  };

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/minhbui/ck7460q0e2wqo1hk4zeujsi6f'
    });

    // const markers = JSON.parse(mapElement.dataset.markers);
    const marker = JSON.parse(mapElement.dataset.marker);

    // markers.forEach((marker) => {
    //   new mapboxgl.Marker()
    //     .setLngLat([ marker.lng, marker.lat ])
    //     .addTo(map);
    // });
    new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);



    fitMapToMarker(map, marker);
  };
};

export { initMapbox };
