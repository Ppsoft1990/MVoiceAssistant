.class public interface abstract Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataOrBuilder;
.super Ljava/lang/Object;
.source "ScheduleRunData.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RunDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getRundata(I)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;
.end method

.method public abstract getRundataCount()I
.end method

.method public abstract getRundataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$RunDataItem;",
            ">;"
        }
    .end annotation
.end method
