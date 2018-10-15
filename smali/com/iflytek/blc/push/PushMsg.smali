.class public Lcom/iflytek/blc/push/PushMsg;
.super Ljava/lang/Object;


# static fields
.field public static final EXTRA_ENTRY_TYPE:Ljava/lang/String; = "entry_type"

.field public static final EXTRA_NOTICE_ID:Ljava/lang/String; = "notice_id"

.field public static final EXTRA_NOTICE_INFOR:Ljava/lang/String; = "notice_infor"

.field public static final EXTRA_NOTICE_ITEM:Ljava/lang/String; = "notice_item"

.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/iflytek/blc/push/PushMsg;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRequestAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "PushMsg"

    const-string/jumbo v1, "getRequestAction()"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string/jumbo v0, "PushMsg"

    const-string/jumbo v1, "getRequestAction() | context is null "

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ".BLC_ACTION_START_REQUEST_NOTICE"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/iflytek/blc/push/PushMsg;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".BLC_ACTION_START_REQUEST_NOTICE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/blc/push/PushMsg;->a:Ljava/lang/String;

    :cond_1
    const-string/jumbo v0, "PushMsg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getRequestAction() | ---> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/blc/push/PushMsg;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/iflytek/blc/push/PushMsg;->a:Ljava/lang/String;

    goto :goto_0
.end method
