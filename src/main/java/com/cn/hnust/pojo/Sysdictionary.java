package com.cn.hnust.pojo;

import java.io.Serializable;

/**
 * @author 
 */
public class Sysdictionary implements Serializable {
    /**
     * 字典项
     */
    private Integer dictentry;

    /**
     * 字典父项名
     */
    private String dictprompt;

    /**
     * 字典子项
     */
    private String subentry;

    /**
     * 字典名
     */
    private String subprompt;

    private static final long serialVersionUID = 1L;

    public Integer getDictentry() {
        return dictentry;
    }

    public void setDictentry(Integer dictentry) {
        this.dictentry = dictentry;
    }

    public String getDictprompt() {
        return dictprompt;
    }

    public void setDictprompt(String dictprompt) {
        this.dictprompt = dictprompt;
    }

    public String getSubentry() {
        return subentry;
    }

    public void setSubentry(String subentry) {
        this.subentry = subentry;
    }

    public String getSubprompt() {
        return subprompt;
    }

    public void setSubprompt(String subprompt) {
        this.subprompt = subprompt;
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
        Sysdictionary other = (Sysdictionary) that;
        return (this.getDictentry() == null ? other.getDictentry() == null : this.getDictentry().equals(other.getDictentry()))
            && (this.getDictprompt() == null ? other.getDictprompt() == null : this.getDictprompt().equals(other.getDictprompt()))
            && (this.getSubentry() == null ? other.getSubentry() == null : this.getSubentry().equals(other.getSubentry()))
            && (this.getSubprompt() == null ? other.getSubprompt() == null : this.getSubprompt().equals(other.getSubprompt()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getDictentry() == null) ? 0 : getDictentry().hashCode());
        result = prime * result + ((getDictprompt() == null) ? 0 : getDictprompt().hashCode());
        result = prime * result + ((getSubentry() == null) ? 0 : getSubentry().hashCode());
        result = prime * result + ((getSubprompt() == null) ? 0 : getSubprompt().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", dictentry=").append(dictentry);
        sb.append(", dictprompt=").append(dictprompt);
        sb.append(", subentry=").append(subentry);
        sb.append(", subprompt=").append(subprompt);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}