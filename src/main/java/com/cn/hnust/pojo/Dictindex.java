package com.cn.hnust.pojo;

import java.io.Serializable;

/**
 * @author 
 */
public class Dictindex implements Serializable {
    private Integer dictentry;

    /**
     * 对应字段
     */
    private String entry;

    /**
     * 对应名称
     */
    private String entryport;

    private static final long serialVersionUID = 1L;

    public Integer getDictentry() {
        return dictentry;
    }

    public void setDictentry(Integer dictentry) {
        this.dictentry = dictentry;
    }

    public String getEntry() {
        return entry;
    }

    public void setEntry(String entry) {
        this.entry = entry;
    }

    public String getEntryport() {
        return entryport;
    }

    public void setEntryport(String entryport) {
        this.entryport = entryport;
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
        Dictindex other = (Dictindex) that;
        return (this.getDictentry() == null ? other.getDictentry() == null : this.getDictentry().equals(other.getDictentry()))
            && (this.getEntry() == null ? other.getEntry() == null : this.getEntry().equals(other.getEntry()))
            && (this.getEntryport() == null ? other.getEntryport() == null : this.getEntryport().equals(other.getEntryport()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getDictentry() == null) ? 0 : getDictentry().hashCode());
        result = prime * result + ((getEntry() == null) ? 0 : getEntry().hashCode());
        result = prime * result + ((getEntryport() == null) ? 0 : getEntryport().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", dictentry=").append(dictentry);
        sb.append(", entry=").append(entry);
        sb.append(", entryport=").append(entryport);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}