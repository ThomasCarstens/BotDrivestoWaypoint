;; Auto-generated. Do not edit!


(when (boundp 'actionlib_tutorials::AveragingResult)
  (if (not (find-package "ACTIONLIB_TUTORIALS"))
    (make-package "ACTIONLIB_TUTORIALS"))
  (shadow 'AveragingResult (find-package "ACTIONLIB_TUTORIALS")))
(unless (find-package "ACTIONLIB_TUTORIALS::AVERAGINGRESULT")
  (make-package "ACTIONLIB_TUTORIALS::AVERAGINGRESULT"))

(in-package "ROS")
;;//! \htmlinclude AveragingResult.msg.html


(defclass actionlib_tutorials::AveragingResult
  :super ros::object
  :slots (_mean _std_dev ))

(defmethod actionlib_tutorials::AveragingResult
  (:init
   (&key
    ((:mean __mean) 0.0)
    ((:std_dev __std_dev) 0.0)
    )
   (send-super :init)
   (setq _mean (float __mean))
   (setq _std_dev (float __std_dev))
   self)
  (:mean
   (&optional __mean)
   (if __mean (setq _mean __mean)) _mean)
  (:std_dev
   (&optional __std_dev)
   (if __std_dev (setq _std_dev __std_dev)) _std_dev)
  (:serialization-length
   ()
   (+
    ;; float32 _mean
    4
    ;; float32 _std_dev
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _mean
       (sys::poke _mean (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _std_dev
       (sys::poke _std_dev (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _mean
     (setq _mean (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _std_dev
     (setq _std_dev (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get actionlib_tutorials::AveragingResult :md5sum-) "d5c7decf6df75ffb4367a05c1bcc7612")
(setf (get actionlib_tutorials::AveragingResult :datatype-) "actionlib_tutorials/AveragingResult")
(setf (get actionlib_tutorials::AveragingResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition
float32 mean
float32 std_dev

")



(provide :actionlib_tutorials/AveragingResult "d5c7decf6df75ffb4367a05c1bcc7612")


