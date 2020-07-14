(ns oeml-rest-api.specs.severity
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def severity-data
  {
   })

(def severity-spec
  (ds/spec
    {:name ::severity
     :spec severity-data}))
