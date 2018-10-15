.class public final enum Lcom/iflytek/blc/feedback/FeedbackType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/blc/feedback/FeedbackType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NETBUG:Lcom/iflytek/blc/feedback/FeedbackType;

.field public static final enum ORDER:Lcom/iflytek/blc/feedback/FeedbackType;

.field public static final enum OTHER:Lcom/iflytek/blc/feedback/FeedbackType;

.field public static final enum PRODUCTBUG:Lcom/iflytek/blc/feedback/FeedbackType;

.field public static final enum SUGGESTION:Lcom/iflytek/blc/feedback/FeedbackType;

.field public static final enum VOICEBUG:Lcom/iflytek/blc/feedback/FeedbackType;

.field private static final synthetic a:[Lcom/iflytek/blc/feedback/FeedbackType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/iflytek/blc/feedback/FeedbackType;

    const-string/jumbo v1, "ORDER"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/blc/feedback/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/feedback/FeedbackType;->ORDER:Lcom/iflytek/blc/feedback/FeedbackType;

    new-instance v0, Lcom/iflytek/blc/feedback/FeedbackType;

    const-string/jumbo v1, "NETBUG"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/blc/feedback/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/feedback/FeedbackType;->NETBUG:Lcom/iflytek/blc/feedback/FeedbackType;

    new-instance v0, Lcom/iflytek/blc/feedback/FeedbackType;

    const-string/jumbo v1, "PRODUCTBUG"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/blc/feedback/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/feedback/FeedbackType;->PRODUCTBUG:Lcom/iflytek/blc/feedback/FeedbackType;

    new-instance v0, Lcom/iflytek/blc/feedback/FeedbackType;

    const-string/jumbo v1, "SUGGESTION"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/blc/feedback/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/feedback/FeedbackType;->SUGGESTION:Lcom/iflytek/blc/feedback/FeedbackType;

    new-instance v0, Lcom/iflytek/blc/feedback/FeedbackType;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/blc/feedback/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/feedback/FeedbackType;->OTHER:Lcom/iflytek/blc/feedback/FeedbackType;

    new-instance v0, Lcom/iflytek/blc/feedback/FeedbackType;

    const-string/jumbo v1, "VOICEBUG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/blc/feedback/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/feedback/FeedbackType;->VOICEBUG:Lcom/iflytek/blc/feedback/FeedbackType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/iflytek/blc/feedback/FeedbackType;

    sget-object v1, Lcom/iflytek/blc/feedback/FeedbackType;->ORDER:Lcom/iflytek/blc/feedback/FeedbackType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/blc/feedback/FeedbackType;->NETBUG:Lcom/iflytek/blc/feedback/FeedbackType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/blc/feedback/FeedbackType;->PRODUCTBUG:Lcom/iflytek/blc/feedback/FeedbackType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/blc/feedback/FeedbackType;->SUGGESTION:Lcom/iflytek/blc/feedback/FeedbackType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/blc/feedback/FeedbackType;->OTHER:Lcom/iflytek/blc/feedback/FeedbackType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/blc/feedback/FeedbackType;->VOICEBUG:Lcom/iflytek/blc/feedback/FeedbackType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/blc/feedback/FeedbackType;->a:[Lcom/iflytek/blc/feedback/FeedbackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/blc/feedback/FeedbackType;
    .locals 1

    const-class v0, Lcom/iflytek/blc/feedback/FeedbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/blc/feedback/FeedbackType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/blc/feedback/FeedbackType;
    .locals 1

    sget-object v0, Lcom/iflytek/blc/feedback/FeedbackType;->a:[Lcom/iflytek/blc/feedback/FeedbackType;

    invoke-virtual {v0}, [Lcom/iflytek/blc/feedback/FeedbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/blc/feedback/FeedbackType;

    return-object v0
.end method
