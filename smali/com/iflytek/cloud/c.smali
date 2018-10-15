.class public final enum Lcom/iflytek/cloud/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/iflytek/cloud/c;

.field public static final enum b:Lcom/iflytek/cloud/c;

.field public static final enum c:Lcom/iflytek/cloud/c;

.field public static final enum d:Lcom/iflytek/cloud/c;

.field public static final enum e:Lcom/iflytek/cloud/c;

.field private static final synthetic f:[Lcom/iflytek/cloud/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/iflytek/cloud/c;

    const-string/jumbo v1, "all"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/c;->a:Lcom/iflytek/cloud/c;

    new-instance v0, Lcom/iflytek/cloud/c;

    const-string/jumbo v1, "detail"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/cloud/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/c;->b:Lcom/iflytek/cloud/c;

    new-instance v0, Lcom/iflytek/cloud/c;

    const-string/jumbo v1, "normal"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/cloud/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/c;->c:Lcom/iflytek/cloud/c;

    new-instance v0, Lcom/iflytek/cloud/c;

    const-string/jumbo v1, "low"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/cloud/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/c;->d:Lcom/iflytek/cloud/c;

    new-instance v0, Lcom/iflytek/cloud/c;

    const-string/jumbo v1, "none"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/cloud/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/c;->e:Lcom/iflytek/cloud/c;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iflytek/cloud/c;

    sget-object v1, Lcom/iflytek/cloud/c;->a:Lcom/iflytek/cloud/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/cloud/c;->b:Lcom/iflytek/cloud/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/cloud/c;->c:Lcom/iflytek/cloud/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/cloud/c;->d:Lcom/iflytek/cloud/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/cloud/c;->e:Lcom/iflytek/cloud/c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iflytek/cloud/c;->f:[Lcom/iflytek/cloud/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/cloud/c;
    .locals 1

    const-class v0, Lcom/iflytek/cloud/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/c;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/cloud/c;
    .locals 1

    sget-object v0, Lcom/iflytek/cloud/c;->f:[Lcom/iflytek/cloud/c;

    invoke-virtual {v0}, [Lcom/iflytek/cloud/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/cloud/c;

    return-object v0
.end method
