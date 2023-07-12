# Changelog

## [1.3.0](https://github.com/actionhippie/kustomize/compare/v1.2.3...v1.3.0) (2023-07-12)


### Features

* add ksops to bin folder for exec kustomize plugin ([6984999](https://github.com/actionhippie/kustomize/commit/6984999702f07c8175e70617204e7b140476ec6c))

## [1.2.3](https://github.com/actionhippie/kustomize/compare/v1.2.2...v1.2.3) (2023-06-19)


### Bugfixes

* **deps:** update dependency helm/helm to v3.12.1 ([85d8257](https://github.com/actionhippie/kustomize/commit/85d8257b6464d59240d44ff4ea0c205470ee358a))

## [1.2.2](https://github.com/actionhippie/kustomize/compare/v1.2.1...v1.2.2) (2023-06-05)


### Bugfixes

* install missing curl package ([9aadce4](https://github.com/actionhippie/kustomize/commit/9aadce4f83cb3fa2d604782723987214e1930735))

## [1.2.1](https://github.com/actionhippie/kustomize/compare/v1.2.0...v1.2.1) (2023-05-29)


### Bugfixes

* **deps:** update dependency viaduct-ai/kustomize-sops to v4.2.1 ([ce5db36](https://github.com/actionhippie/kustomize/commit/ce5db368fbd1892bc3b900db50c59aa294156d54))

## [1.2.0](https://github.com/actionhippie/kustomize/compare/v1.1.0...v1.2.0) (2023-05-22)


### Features

* **deps:** update dependency viaduct-ai/kustomize-sops to v4.2.0 ([84e2329](https://github.com/actionhippie/kustomize/commit/84e2329003fd2df571355845c130ac07add6a69f))


### Bugfixes

* **deps:** update dependency viaduct-ai/kustomize-sops to v4.1.3 ([6c34b2f](https://github.com/actionhippie/kustomize/commit/6c34b2f89ba1528be66fee8c25545962a1ad659b))

## [1.1.0](https://github.com/actionhippie/kustomize/compare/v1.0.0...v1.1.0) (2023-05-11)


### Features

* add gnupg-keyboxd as it is a separate package ([7559451](https://github.com/actionhippie/kustomize/commit/7559451011a59a7be873ae558fabdecb014ef6ca))
* **deps:** update alpine docker tag to v3.18 ([7b2be37](https://github.com/actionhippie/kustomize/commit/7b2be37e42ec74ff3ab1f10dac20974216702b7c))
* **deps:** update dependency helm/helm to v3.12.0 ([d28ce0e](https://github.com/actionhippie/kustomize/commit/d28ce0ed4973a1281072a8417f94042404abaf6e))

## 1.0.0 (2023-05-11)


### Features

* add more options ([ab4e85b](https://github.com/actionhippie/kustomize/commit/ab4e85b622bd4261700c5049b2eb4372e32203f9))
* integrate semantic releases ([4f7f74b](https://github.com/actionhippie/kustomize/commit/4f7f74b9754ee929eee454bafc34e3fd5abd293d))
* use new env variable for set-output ([d867666](https://github.com/actionhippie/kustomize/commit/d867666c7be1727773b9a9178ddebda373f91500))


### Bugfixes

* install keyboxd for proper gnupg runtime ([abfb8d4](https://github.com/actionhippie/kustomize/commit/abfb8d44bbcccf383be84654432119bbab35856b))
* try to fix image while downgrading ([4adb050](https://github.com/actionhippie/kustomize/commit/4adb050e68c3c15d627709a1123727e8aa2b33ac))
* use GITHUB_OUTPUT instead of GITHUB_STATE ([40354ef](https://github.com/actionhippie/kustomize/commit/40354ef7f9a36c61921a04cacf926abe00d85b45))
