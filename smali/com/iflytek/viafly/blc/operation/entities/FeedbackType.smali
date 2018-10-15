.class public final enum Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;
.super Ljava/lang/Enum;
.source "FeedbackType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

.field public static final enum NETBUG:Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

.field public static final enum ORDER:Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

.field public static final enum OTHER:Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

.field public static final enum PRODUCTBUG:Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

.field public static final enum SUGGESTION:Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    const-string/jumbo v1, "ORDER"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;->ORDER:Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    new-instance v0, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    const-string/jumbo v1, "NETBUG"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;->NETBUG:Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    new-instance v0, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    const-string/jumbo v1, "PRODUCTBUG"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;->PRODUCTBUG:Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    new-instance v0, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    const-string/jumbo v1, "SUGGESTION"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;->SUGGESTION:Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    new-instance v0, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;->OTHER:Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    sget-object v1, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;->ORDER:Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;->NETBUG:Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;->PRODUCTBUG:Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;->SUGGESTION:Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;->OTHER:Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;->$VALUES:[Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;->$VALUES:[Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/blc/operation/entities/FeedbackType;

    return-object v0
.end method
