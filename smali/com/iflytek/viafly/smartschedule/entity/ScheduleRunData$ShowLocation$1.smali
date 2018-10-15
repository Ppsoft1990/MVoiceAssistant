.class final Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation$1;
.super Ljava/lang/Object;
.source "ScheduleRunData.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation$1;->findValueByNumber(I)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 39
    invoke-static {p1}, Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;->valueOf(I)Lcom/iflytek/viafly/smartschedule/entity/ScheduleRunData$ShowLocation;

    move-result-object v0

    return-object v0
.end method
