package com.cn.hnust.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * @author 
 */
public class Checkorder implements Serializable {
    /**
     * 订单号
     */
    private Integer orderno;

    private Integer roomno;

    private String idno;

    private String cname;

    private String phone;

    /**
     * 开始日期
     */
    private String begindate;

    /**
     * 结束日期
     */
    private String enddate;

    /**
     * 入住日期
     */
    private String checkdate;

    /**
     * 预定日期
     */
    private String reservedate;

    /**
     * 退房日期
     */
    private String leavedate;

    /**
     * 入住时间
     */
    private String checktime;

    /**
     * 预定时间
     */
    private String reservetime;

    /**
     * 退房时间
     */
    private String leavetime;

    /**
     * 开始时间
     */
    private String begintime;

    /**
     * 结束时间
     */
    private String endtime;

    /**
     * 订单状态(1:已付，2:未付，3:退款，4:完成，5:进行，6:作废)
     */
    private String orderstate;

    /**
     * 订单类型(1:住房单，2:预定单)
     */
    private String ordertype;

    /**
     * 支付状态(1:押金和房费，2:房费，3:定金，4:未付)
     */
    private String paystate;

    /**
     * 客户状态(1:入住客户，2:预定客户，3:到期客户，4:续住客户，5:退订客户)
     */
    private String cstate;

    /**
     * 备注
     */
    private String remark;

    private static final long serialVersionUID = 1L;

    public Integer getOrderno() {
        return orderno;
    }

    public void setOrderno(Integer orderno) {
        this.orderno = orderno;
    }

    public Integer getRoomno() {
        return roomno;
    }

    public void setRoomno(Integer roomno) {
        this.roomno = roomno;
    }

    public String getIdno() {
        return idno;
    }

    public void setIdno(String idno) {
        this.idno = idno;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getBegindate() {
        return begindate;
    }

    public void setBegindate(String begindate) {
        this.begindate = begindate;
    }

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate;
    }

    public String getCheckdate() {
        return checkdate;
    }

    public void setCheckdate(String checkdate) {
        this.checkdate = checkdate;
    }

    public String getReservedate() {
        return reservedate;
    }

    public void setReservedate(String reservedate) {
        this.reservedate = reservedate;
    }

    public String getLeavedate() {
        return leavedate;
    }

    public void setLeavedate(String leavedate) {
        this.leavedate = leavedate;
    }

    public String getChecktime() {
        return checktime;
    }

    public void setChecktime(String checktime) {
        this.checktime = checktime;
    }

    public String getReservetime() {
        return reservetime;
    }

    public void setReservetime(String reservetime) {
        this.reservetime = reservetime;
    }

    public String getLeavetime() {
        return leavetime;
    }

    public void setLeavetime(String leavetime) {
        this.leavetime = leavetime;
    }

    public String getBegintime() {
        return begintime;
    }

    public void setBegintime(String begintime) {
        this.begintime = begintime;
    }

    public String getEndtime() {
        return endtime;
    }

    public void setEndtime(String endtime) {
        this.endtime = endtime;
    }

    public String getOrderstate() {
        return orderstate;
    }

    public void setOrderstate(String orderstate) {
        this.orderstate = orderstate;
    }

    public String getOrdertype() {
        return ordertype;
    }

    public void setOrdertype(String ordertype) {
        this.ordertype = ordertype;
    }

    public String getPaystate() {
        return paystate;
    }

    public void setPaystate(String paystate) {
        this.paystate = paystate;
    }

    public String getCstate() {
        return cstate;
    }

    public void setCstate(String cstate) {
        this.cstate = cstate;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        Checkorder other = (Checkorder) that;
        return (this.getOrderno() == null ? other.getOrderno() == null : this.getOrderno().equals(other.getOrderno()))
            && (this.getRoomno() == null ? other.getRoomno() == null : this.getRoomno().equals(other.getRoomno()))
            && (this.getIdno() == null ? other.getIdno() == null : this.getIdno().equals(other.getIdno()))
            && (this.getCname() == null ? other.getCname() == null : this.getCname().equals(other.getCname()))
            && (this.getPhone() == null ? other.getPhone() == null : this.getPhone().equals(other.getPhone()))
            && (this.getBegindate() == null ? other.getBegindate() == null : this.getBegindate().equals(other.getBegindate()))
            && (this.getEnddate() == null ? other.getEnddate() == null : this.getEnddate().equals(other.getEnddate()))
            && (this.getCheckdate() == null ? other.getCheckdate() == null : this.getCheckdate().equals(other.getCheckdate()))
            && (this.getReservedate() == null ? other.getReservedate() == null : this.getReservedate().equals(other.getReservedate()))
            && (this.getLeavedate() == null ? other.getLeavedate() == null : this.getLeavedate().equals(other.getLeavedate()))
            && (this.getChecktime() == null ? other.getChecktime() == null : this.getChecktime().equals(other.getChecktime()))
            && (this.getReservetime() == null ? other.getReservetime() == null : this.getReservetime().equals(other.getReservetime()))
            && (this.getLeavetime() == null ? other.getLeavetime() == null : this.getLeavetime().equals(other.getLeavetime()))
            && (this.getBegintime() == null ? other.getBegintime() == null : this.getBegintime().equals(other.getBegintime()))
            && (this.getEndtime() == null ? other.getEndtime() == null : this.getEndtime().equals(other.getEndtime()))
            && (this.getOrderstate() == null ? other.getOrderstate() == null : this.getOrderstate().equals(other.getOrderstate()))
            && (this.getOrdertype() == null ? other.getOrdertype() == null : this.getOrdertype().equals(other.getOrdertype()))
            && (this.getPaystate() == null ? other.getPaystate() == null : this.getPaystate().equals(other.getPaystate()))
            && (this.getCstate() == null ? other.getCstate() == null : this.getCstate().equals(other.getCstate()))
            && (this.getRemark() == null ? other.getRemark() == null : this.getRemark().equals(other.getRemark()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getOrderno() == null) ? 0 : getOrderno().hashCode());
        result = prime * result + ((getRoomno() == null) ? 0 : getRoomno().hashCode());
        result = prime * result + ((getIdno() == null) ? 0 : getIdno().hashCode());
        result = prime * result + ((getCname() == null) ? 0 : getCname().hashCode());
        result = prime * result + ((getPhone() == null) ? 0 : getPhone().hashCode());
        result = prime * result + ((getBegindate() == null) ? 0 : getBegindate().hashCode());
        result = prime * result + ((getEnddate() == null) ? 0 : getEnddate().hashCode());
        result = prime * result + ((getCheckdate() == null) ? 0 : getCheckdate().hashCode());
        result = prime * result + ((getReservedate() == null) ? 0 : getReservedate().hashCode());
        result = prime * result + ((getLeavedate() == null) ? 0 : getLeavedate().hashCode());
        result = prime * result + ((getChecktime() == null) ? 0 : getChecktime().hashCode());
        result = prime * result + ((getReservetime() == null) ? 0 : getReservetime().hashCode());
        result = prime * result + ((getLeavetime() == null) ? 0 : getLeavetime().hashCode());
        result = prime * result + ((getBegintime() == null) ? 0 : getBegintime().hashCode());
        result = prime * result + ((getEndtime() == null) ? 0 : getEndtime().hashCode());
        result = prime * result + ((getOrderstate() == null) ? 0 : getOrderstate().hashCode());
        result = prime * result + ((getOrdertype() == null) ? 0 : getOrdertype().hashCode());
        result = prime * result + ((getPaystate() == null) ? 0 : getPaystate().hashCode());
        result = prime * result + ((getCstate() == null) ? 0 : getCstate().hashCode());
        result = prime * result + ((getRemark() == null) ? 0 : getRemark().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", orderno=").append(orderno);
        sb.append(", roomno=").append(roomno);
        sb.append(", idno=").append(idno);
        sb.append(", cname=").append(cname);
        sb.append(", phone=").append(phone);
        sb.append(", begindate=").append(begindate);
        sb.append(", enddate=").append(enddate);
        sb.append(", checkdate=").append(checkdate);
        sb.append(", reservedate=").append(reservedate);
        sb.append(", leavedate=").append(leavedate);
        sb.append(", checktime=").append(checktime);
        sb.append(", reservetime=").append(reservetime);
        sb.append(", leavetime=").append(leavetime);
        sb.append(", begintime=").append(begintime);
        sb.append(", endtime=").append(endtime);
        sb.append(", orderstate=").append(orderstate);
        sb.append(", ordertype=").append(ordertype);
        sb.append(", paystate=").append(paystate);
        sb.append(", cstate=").append(cstate);
        sb.append(", remark=").append(remark);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}