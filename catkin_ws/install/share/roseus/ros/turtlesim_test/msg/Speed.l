;; Auto-generated. Do not edit!


(when (boundp 'turtlesim_test::Speed)
  (if (not (find-package "TURTLESIM_TEST"))
    (make-package "TURTLESIM_TEST"))
  (shadow 'Speed (find-package "TURTLESIM_TEST")))
(unless (find-package "TURTLESIM_TEST::SPEED")
  (make-package "TURTLESIM_TEST::SPEED"))

(in-package "ROS")
;;//! \htmlinclude Speed.msg.html


(defclass turtlesim_test::Speed
  :super ros::object
  :slots (_data ))

(defmethod turtlesim_test::Speed
  (:init
   (&key
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _data (float __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _data
       (sys::poke _data (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _data
     (setq _data (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get turtlesim_test::Speed :md5sum-) "73fcbf46b49191e672908e50842a83d4")
(setf (get turtlesim_test::Speed :datatype-) "turtlesim_test/Speed")
(setf (get turtlesim_test::Speed :definition-)
      "float32 data

")



(provide :turtlesim_test/Speed "73fcbf46b49191e672908e50842a83d4")


