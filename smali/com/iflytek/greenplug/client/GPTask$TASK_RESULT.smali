.class public final enum Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;
.super Ljava/lang/Enum;
.source "GPTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/GPTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TASK_RESULT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

.field public static final enum ERROR:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

.field public static final enum ERROR_ALREADY_EXISTS:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

.field public static final enum ERROR_CALL_IN_MAINTHREAD:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

.field public static final enum ERROR_INVALID_APK:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

.field public static final enum ERROR_NO_REQUESTED_PERMISSION:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

.field public static final enum ERROR_NO_SUCH_PLUGIN:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

.field public static final enum ERROR_NO_SUPPORTED_ABI:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

.field public static final enum ERROR_TIMEOUT:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

.field public static final enum SUCCESS:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

.field public static final enum SUCCESS_PARTIAL:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

.field public static final enum UNKNOWN_DELAY:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

.field public static final enum UNKNOWN_INIT:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;


# instance fields
.field private code:I

.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 21
    new-instance v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    const-string/jumbo v1, "UNKNOWN_INIT"

    const/16 v2, -0x64

    const-string/jumbo v3, "\u521d\u59cb\u672a\u6267\u884c"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->UNKNOWN_INIT:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 22
    new-instance v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    const-string/jumbo v1, "UNKNOWN_DELAY"

    const/16 v2, -0x63

    const-string/jumbo v3, "\u5ef6\u8fdf\u6267\u884c"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->UNKNOWN_DELAY:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 24
    new-instance v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    const-string/jumbo v1, "ERROR_CALL_IN_MAINTHREAD"

    const/4 v2, -0x8

    const-string/jumbo v3, "\u4e0d\u652f\u6301\u5728\u4e3b\u7ebf\u7a0b\u8c03\u7528\u540c\u6b65\u63a5\u53e3"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_CALL_IN_MAINTHREAD:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 25
    new-instance v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    const-string/jumbo v1, "ERROR_TIMEOUT"

    const/4 v2, -0x7

    const-string/jumbo v3, "\u8d85\u65f6"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_TIMEOUT:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 26
    new-instance v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    const-string/jumbo v1, "ERROR_NO_SUCH_PLUGIN"

    const/4 v2, -0x6

    const-string/jumbo v3, "\u65e0\u6b64\u63d2\u4ef6"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_NO_SUCH_PLUGIN:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 27
    new-instance v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    const-string/jumbo v1, "ERROR_NO_SUPPORTED_ABI"

    const/4 v2, 0x5

    const/4 v3, -0x5

    const-string/jumbo v4, "\u65e0\u652f\u6301\u7684ABI\u7c7b\u578b"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_NO_SUPPORTED_ABI:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 28
    new-instance v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    const-string/jumbo v1, "ERROR_NO_REQUESTED_PERMISSION"

    const/4 v2, 0x6

    const/4 v3, -0x4

    const-string/jumbo v4, "\u65e0\u7533\u8bf7\u8fc7\u7684\u6743\u9650"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_NO_REQUESTED_PERMISSION:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 29
    new-instance v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    const-string/jumbo v1, "ERROR_ALREADY_EXISTS"

    const/4 v2, 0x7

    const/4 v3, -0x3

    const-string/jumbo v4, "\u5df2\u7ecf\u5b58\u5728"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_ALREADY_EXISTS:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 30
    new-instance v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    const-string/jumbo v1, "ERROR_INVALID_APK"

    const/16 v2, 0x8

    const/4 v3, -0x2

    const-string/jumbo v4, "\u65e0\u6548\u7684APK"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_INVALID_APK:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 31
    new-instance v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    const-string/jumbo v1, "ERROR"

    const/16 v2, 0x9

    const/4 v3, -0x1

    const-string/jumbo v4, "\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 33
    new-instance v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    const-string/jumbo v1, "SUCCESS"

    const/16 v2, 0xa

    const-string/jumbo v3, "\u6210\u529f"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->SUCCESS:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 34
    new-instance v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    const-string/jumbo v1, "SUCCESS_PARTIAL"

    const/16 v2, 0xb

    const-string/jumbo v3, "\u90e8\u5206\u6210\u529f"

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->SUCCESS_PARTIAL:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    .line 20
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    sget-object v1, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->UNKNOWN_INIT:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->UNKNOWN_DELAY:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_CALL_IN_MAINTHREAD:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    aput-object v1, v0, v7

    sget-object v1, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_TIMEOUT:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    aput-object v1, v0, v8

    sget-object v1, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_NO_SUCH_PLUGIN:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_NO_SUPPORTED_ABI:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_NO_REQUESTED_PERMISSION:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_ALREADY_EXISTS:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR_INVALID_APK:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->ERROR:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->SUCCESS:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->SUCCESS_PARTIAL:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->$VALUES:[Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput p3, p0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->code:I

    .line 41
    iput-object p4, p0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->desc:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->$VALUES:[Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v0}, [Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    return-object v0
.end method


# virtual methods
.method public CODE()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->code:I

    return v0
.end method

.method public DESC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->desc:Ljava/lang/String;

    return-object v0
.end method
