package org.crown.framework.responses;

import lombok.*;

import java.io.Serializable;

@Getter
@ToString
@Builder
@EqualsAndHashCode(callSuper = false)
@NoArgsConstructor
public class ResultResponse<T>  extends ApiResponses<T> implements Serializable {
    private static final long serialVersionUID = 1L;

    private Integer status;

    private  String msg;

    private Object result;

    public ResultResponse(Integer status, String msg,Object result) {
        this.status =  status;
        this.msg =  msg;
        this.result =  result;
    }
}
