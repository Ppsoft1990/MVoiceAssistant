.class public final enum Lcom/iflytek/blc/system/SimType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/blc/system/SimType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum China_Mobile:Lcom/iflytek/blc/system/SimType;

.field public static final enum China_Telecom:Lcom/iflytek/blc/system/SimType;

.field public static final enum China_Unicom:Lcom/iflytek/blc/system/SimType;

.field public static final enum Null:Lcom/iflytek/blc/system/SimType;

.field public static final enum Unknown:Lcom/iflytek/blc/system/SimType;

.field private static final synthetic a:[Lcom/iflytek/blc/system/SimType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/iflytek/blc/system/SimType;

    const-string/jumbo v1, "Null"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/blc/system/SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/system/SimType;->Null:Lcom/iflytek/blc/system/SimType;

    new-instance v0, Lcom/iflytek/blc/system/SimType;

    const-string/jumbo v1, "China_Mobile"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/blc/system/SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/system/SimType;->China_Mobile:Lcom/iflytek/blc/system/SimType;

    new-instance v0, Lcom/iflytek/blc/system/SimType;

    const-string/jumbo v1, "China_Unicom"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/blc/system/SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/system/SimType;->China_Unicom:Lcom/iflytek/blc/system/SimType;

    new-instance v0, Lcom/iflytek/blc/system/SimType;

    const-string/jumbo v1, "China_Telecom"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/blc/system/SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/system/SimType;->China_Telecom:Lcom/iflytek/blc/system/SimType;

    new-instance v0, Lcom/iflytek/blc/system/SimType;

    const-string/jumbo v1, "Unknown"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/blc/system/SimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/blc/system/SimType;->Unknown:Lcom/iflytek/blc/system/SimType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iflytek/blc/system/SimType;

    sget-object v1, Lcom/iflytek/blc/system/SimType;->Null:Lcom/iflytek/blc/system/SimType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/blc/system/SimType;->China_Mobile:Lcom/iflytek/blc/system/SimType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/blc/system/SimType;->China_Unicom:Lcom/iflytek/blc/system/SimType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/blc/system/SimType;->China_Telecom:Lcom/iflytek/blc/system/SimType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/blc/system/SimType;->Unknown:Lcom/iflytek/blc/system/SimType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iflytek/blc/system/SimType;->a:[Lcom/iflytek/blc/system/SimType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/blc/system/SimType;
    .locals 1

    const-class v0, Lcom/iflytek/blc/system/SimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/blc/system/SimType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/blc/system/SimType;
    .locals 1

    sget-object v0, Lcom/iflytek/blc/system/SimType;->a:[Lcom/iflytek/blc/system/SimType;

    invoke-virtual {v0}, [Lcom/iflytek/blc/system/SimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/blc/system/SimType;

    return-object v0
.end method
