.class public Lcom/iflytek/common/notice/ScheduleNotificationParam;
.super Lcom/iflytek/common/notice/NotificationParam;
.source "ScheduleNotificationParam.java"


# instance fields
.field private subTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "business"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/notice/NotificationParam;-><init>(ILjava/lang/String;)V

    .line 17
    const v0, 0x7f0300fd

    iput v0, p0, Lcom/iflytek/common/notice/ScheduleNotificationParam;->layoutRes:I

    .line 18
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "business"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .param p7, "iconCustom"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p5, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p6, "showBtnContentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p7}, Lcom/iflytek/common/notice/NotificationParam;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 22
    const v0, 0x7f0300fd

    iput v0, p0, Lcom/iflytek/common/notice/ScheduleNotificationParam;->layoutRes:I

    .line 23
    return-void
.end method


# virtual methods
.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/iflytek/common/notice/ScheduleNotificationParam;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "subTitle"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/iflytek/common/notice/ScheduleNotificationParam;->subTitle:Ljava/lang/String;

    .line 31
    return-void
.end method
