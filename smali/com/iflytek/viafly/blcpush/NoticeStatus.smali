.class public final enum Lcom/iflytek/viafly/blcpush/NoticeStatus;
.super Ljava/lang/Enum;
.source "NoticeStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/blcpush/NoticeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/blcpush/NoticeStatus;

.field public static final enum DATED:Lcom/iflytek/viafly/blcpush/NoticeStatus;

.field public static final enum EFFECTIVE:Lcom/iflytek/viafly/blcpush/NoticeStatus;

.field public static final enum UNEFFECTIVE:Lcom/iflytek/viafly/blcpush/NoticeStatus;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/iflytek/viafly/blcpush/NoticeStatus;

    const-string/jumbo v1, "EFFECTIVE"

    invoke-direct {v0, v1, v2, v2}, Lcom/iflytek/viafly/blcpush/NoticeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/viafly/blcpush/NoticeStatus;->EFFECTIVE:Lcom/iflytek/viafly/blcpush/NoticeStatus;

    new-instance v0, Lcom/iflytek/viafly/blcpush/NoticeStatus;

    const-string/jumbo v1, "UNEFFECTIVE"

    invoke-direct {v0, v1, v3, v3}, Lcom/iflytek/viafly/blcpush/NoticeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/viafly/blcpush/NoticeStatus;->UNEFFECTIVE:Lcom/iflytek/viafly/blcpush/NoticeStatus;

    new-instance v0, Lcom/iflytek/viafly/blcpush/NoticeStatus;

    const-string/jumbo v1, "DATED"

    invoke-direct {v0, v1, v4, v4}, Lcom/iflytek/viafly/blcpush/NoticeStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/viafly/blcpush/NoticeStatus;->DATED:Lcom/iflytek/viafly/blcpush/NoticeStatus;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iflytek/viafly/blcpush/NoticeStatus;

    sget-object v1, Lcom/iflytek/viafly/blcpush/NoticeStatus;->EFFECTIVE:Lcom/iflytek/viafly/blcpush/NoticeStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/blcpush/NoticeStatus;->UNEFFECTIVE:Lcom/iflytek/viafly/blcpush/NoticeStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/blcpush/NoticeStatus;->DATED:Lcom/iflytek/viafly/blcpush/NoticeStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/iflytek/viafly/blcpush/NoticeStatus;->$VALUES:[Lcom/iflytek/viafly/blcpush/NoticeStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    iput p3, p0, Lcom/iflytek/viafly/blcpush/NoticeStatus;->value:I

    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/blcpush/NoticeStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/iflytek/viafly/blcpush/NoticeStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blcpush/NoticeStatus;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/blcpush/NoticeStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/iflytek/viafly/blcpush/NoticeStatus;->$VALUES:[Lcom/iflytek/viafly/blcpush/NoticeStatus;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/blcpush/NoticeStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/blcpush/NoticeStatus;

    return-object v0
.end method
