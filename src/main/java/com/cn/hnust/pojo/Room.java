package com.cn.hnust.pojo;

import java.io.Serializable;

/**
 * @author 
 */
public class Room implements Serializable {
    /**
     * 第一位楼层，后面为房号
     */
    private Integer roomno;

    /**
     * 客房类型(1:标准房，2:商务标准房，3:大床房，4:商务大床房，5:情侣房，6:麻将房，7:娱乐房，8:总统套房)
     */
    private String roomtype;

    /**
     * 客房状态(1:空房，2:已住，3:空房未打扫，4:被预定，5:废房)
     */
    private String rstate;

    /**
     * 客房价格
     */
    private Integer price;

    /**
     * 备注
     */
    private String remak;

    private static final long serialVersionUID = 1L;

    public Integer getRoomno() {
        return roomno;
    }

    public void setRoomno(Integer roomno) {
        this.roomno = roomno;
    }

    public String getRoomtype() {
        return roomtype;
    }

    public void setRoomtype(String roomtype) {
        this.roomtype = roomtype;
    }

    public String getRstate() {
        return rstate;
    }

    public void setRstate(String rstate) {
        this.rstate = rstate;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getRemak() {
        return remak;
    }

    public void setRemak(String remak) {
        this.remak = remak;
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
        Room other = (Room) that;
        return (this.getRoomno() == null ? other.getRoomno() == null : this.getRoomno().equals(other.getRoomno()))
            && (this.getRoomtype() == null ? other.getRoomtype() == null : this.getRoomtype().equals(other.getRoomtype()))
            && (this.getRstate() == null ? other.getRstate() == null : this.getRstate().equals(other.getRstate()))
            && (this.getPrice() == null ? other.getPrice() == null : this.getPrice().equals(other.getPrice()))
            && (this.getRemak() == null ? other.getRemak() == null : this.getRemak().equals(other.getRemak()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getRoomno() == null) ? 0 : getRoomno().hashCode());
        result = prime * result + ((getRoomtype() == null) ? 0 : getRoomtype().hashCode());
        result = prime * result + ((getRstate() == null) ? 0 : getRstate().hashCode());
        result = prime * result + ((getPrice() == null) ? 0 : getPrice().hashCode());
        result = prime * result + ((getRemak() == null) ? 0 : getRemak().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", roomno=").append(roomno);
        sb.append(", roomtype=").append(roomtype);
        sb.append(", rstate=").append(rstate);
        sb.append(", price=").append(price);
        sb.append(", remak=").append(remak);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}