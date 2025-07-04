note
 description:"[
		FinFeedAPI SEC REST API
 		No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
  		The version of the OpenAPI document: v1
 	    Contact: support@apibricks.io

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class MVC_VALIDATION_PROBLEM_DETAILS

inherit


  STRING_TABLE [ANY]

feature --Access

    type: detachable STRING_32
      
    title: detachable STRING_32
      
    status: INTEGER_32
      
    detail: detachable STRING_32
      
    instance: detachable STRING_32
      
    errors: detachable STRING_TABLE [LIST [STRING_32]]
      

feature -- Change Element

    set_type (a_name: like type)
        -- Set 'type' with 'a_name'.
      do
        type := a_name
      ensure
        type_set: type = a_name
      end

    set_title (a_name: like title)
        -- Set 'title' with 'a_name'.
      do
        title := a_name
      ensure
        title_set: title = a_name
      end

    set_status (a_name: like status)
        -- Set 'status' with 'a_name'.
      do
        status := a_name
      ensure
        status_set: status = a_name
      end

    set_detail (a_name: like detail)
        -- Set 'detail' with 'a_name'.
      do
        detail := a_name
      ensure
        detail_set: detail = a_name
      end

    set_instance (a_name: like instance)
        -- Set 'instance' with 'a_name'.
      do
        instance := a_name
      ensure
        instance_set: instance = a_name
      end

    set_errors (a_name: like errors)
        -- Set 'errors' with 'a_name'.
      do
        errors := a_name
      ensure
        errors_set: errors = a_name
      end


 feature -- Status Report

    output: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append(out_)
        Result.append("%Nclass MVC_VALIDATION_PROBLEM_DETAILS%N")
        if attached type as l_type then
          Result.append ("%Ntype:")
          Result.append (l_type.out)
          Result.append ("%N")
        end
        if attached title as l_title then
          Result.append ("%Ntitle:")
          Result.append (l_title.out)
          Result.append ("%N")
        end
        if attached status as l_status then
          Result.append ("%Nstatus:")
          Result.append (l_status.out)
          Result.append ("%N")
        end
        if attached detail as l_detail then
          Result.append ("%Ndetail:")
          Result.append (l_detail.out)
          Result.append ("%N")
        end
        if attached instance as l_instance then
          Result.append ("%Ninstance:")
          Result.append (l_instance.out)
          Result.append ("%N")
        end
        if attached errors as l_errors then
          Result.append ("%Nerrors:")
          across l_errors as ic loop
            Result.append ("%N")
            Result.append ("key:")
            Result.append (ic.key.out)
            Result.append (" - ")
            Result.append ("val:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end
      end
end

