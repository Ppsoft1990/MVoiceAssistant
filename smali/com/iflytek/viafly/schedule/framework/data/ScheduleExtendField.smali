.class public final enum Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;
.super Ljava/lang/Enum;
.source "ScheduleExtendField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

.field public static final enum EXTERNAL_SCHEDULE_DETAIL_URL:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

.field public static final enum EXTERNAL_SCHEDULE_SRC_DESC:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

.field public static final enum EXTERNAL_SCHEDULE_SRC_URL:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

.field public static final enum HOT_SCHEDULE_DESC:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

.field public static final enum HOT_SCHEDULE_ID:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

.field public static final enum HOT_SCHEDULE_PIC_URL:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

.field public static final enum IS_NEWS_SCHEDULE_CREATED_FROM_SOHUNEWS:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

.field public static final enum IS_SILIENT:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

.field public static final enum RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

.field public static final enum RECORD_RING_TONE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

.field public static final enum RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

.field public static final enum TRAIN_BIZ_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

.field public static final enum TRAIN_INFO:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

.field private static scheduleExtendFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDbKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v1, "HOT_SCHEDULE_ID"

    const-string/jumbo v2, "hot_schedule_id"

    invoke-direct {v0, v1, v4, v2}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_ID:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 17
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v1, "HOT_SCHEDULE_PIC_URL"

    const-string/jumbo v2, "hot_schedule_pic_url"

    invoke-direct {v0, v1, v5, v2}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_PIC_URL:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 18
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v1, "HOT_SCHEDULE_DESC"

    const-string/jumbo v2, "hot_schedule_desc"

    invoke-direct {v0, v1, v6, v2}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_DESC:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 19
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v1, "EXTERNAL_SCHEDULE_SRC_DESC"

    const-string/jumbo v2, "external_schedule_src_desc"

    invoke-direct {v0, v1, v7, v2}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->EXTERNAL_SCHEDULE_SRC_DESC:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 20
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v1, "EXTERNAL_SCHEDULE_SRC_URL"

    const-string/jumbo v2, "external_schedule_src_url"

    invoke-direct {v0, v1, v8, v2}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->EXTERNAL_SCHEDULE_SRC_URL:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 21
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v1, "EXTERNAL_SCHEDULE_DETAIL_URL"

    const/4 v2, 0x5

    const-string/jumbo v3, "external_schedule_detail_url"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->EXTERNAL_SCHEDULE_DETAIL_URL:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 22
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v1, "RING_TONE_NAME"

    const/4 v2, 0x6

    const-string/jumbo v3, "ring_tone_name"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 23
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v1, "RECORD_RING_TONE"

    const/4 v2, 0x7

    const-string/jumbo v3, "record_ring_tone"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_TONE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 24
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v1, "IS_SILIENT"

    const/16 v2, 0x8

    const-string/jumbo v3, "is_silient"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->IS_SILIENT:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 25
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v1, "IS_NEWS_SCHEDULE_CREATED_FROM_SOHUNEWS"

    const/16 v2, 0x9

    const-string/jumbo v3, "is_news_schedule_created_from_sohunews"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->IS_NEWS_SCHEDULE_CREATED_FROM_SOHUNEWS:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 26
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v1, "TRAIN_BIZ_TYPE"

    const/16 v2, 0xa

    const-string/jumbo v3, "train_biz_type"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->TRAIN_BIZ_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 27
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v1, "TRAIN_INFO"

    const/16 v2, 0xb

    const-string/jumbo v3, "train_info"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->TRAIN_INFO:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 28
    new-instance v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    const-string/jumbo v1, "RECORD_RING_SUB_TYPE"

    const/16 v2, 0xc

    const-string/jumbo v3, "record_ring_sub_type"

    invoke-direct {v0, v1, v2, v3}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 14
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_ID:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_PIC_URL:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_DESC:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->EXTERNAL_SCHEDULE_SRC_DESC:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    aput-object v1, v0, v7

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->EXTERNAL_SCHEDULE_SRC_URL:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->EXTERNAL_SCHEDULE_DETAIL_URL:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_TONE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->IS_SILIENT:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->IS_NEWS_SCHEDULE_CREATED_FROM_SOHUNEWS:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->TRAIN_BIZ_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->TRAIN_INFO:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->scheduleExtendFields:Ljava/util/List;

    .line 47
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->scheduleExtendFields:Ljava/util/List;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_ID:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->scheduleExtendFields:Ljava/util/List;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_DESC:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->scheduleExtendFields:Ljava/util/List;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_PIC_URL:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->scheduleExtendFields:Ljava/util/List;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->EXTERNAL_SCHEDULE_SRC_DESC:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->scheduleExtendFields:Ljava/util/List;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->EXTERNAL_SCHEDULE_SRC_URL:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->scheduleExtendFields:Ljava/util/List;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->EXTERNAL_SCHEDULE_DETAIL_URL:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->scheduleExtendFields:Ljava/util/List;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->scheduleExtendFields:Ljava/util/List;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_TONE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->scheduleExtendFields:Ljava/util/List;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->IS_SILIENT:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->scheduleExtendFields:Ljava/util/List;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->IS_NEWS_SCHEDULE_CREATED_FROM_SOHUNEWS:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->scheduleExtendFields:Ljava/util/List;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->TRAIN_BIZ_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->scheduleExtendFields:Ljava/util/List;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->TRAIN_INFO:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->scheduleExtendFields:Ljava/util/List;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_SUB_TYPE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "dbKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->mDbKey:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static getEntendFieldList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->scheduleExtendFields:Ljava/util/List;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->$VALUES:[Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    return-object v0
.end method


# virtual methods
.method public getDbKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->mDbKey:Ljava/lang/String;

    return-object v0
.end method
