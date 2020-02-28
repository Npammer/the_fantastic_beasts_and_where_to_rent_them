import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

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

    const marker = JSON.parse(mapElement.dataset.marker);

    new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);

    fitMapToMarker(map, marker);
  };
};

const initMapbox2 = () => {
  const mapElement2 = document.getElementById('map2');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 10, duration: 5000 });
  };

  if (mapElement2) {
    mapboxgl.accessToken = mapElement2.dataset.mapboxApiKey;
    const map2 = new mapboxgl.Map({
      container: 'map2',
      style: 'mapbox://styles/minhbui/ck7460q0e2wqo1hk4zeujsi6f'
    });

    const markers = JSON.parse(mapElement2.dataset.markers);

    markers.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map2);
    });


    fitMapToMarkers(map2, markers);
  };
};

export { initMapbox, initMapbox2 };
