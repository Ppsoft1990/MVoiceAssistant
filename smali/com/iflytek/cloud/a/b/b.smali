.class public final enum Lcom/iflytek/cloud/a/b/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/iflytek/cloud/a/b/b;

.field public static final enum b:Lcom/iflytek/cloud/a/b/b;

.field private static final synthetic c:[Lcom/iflytek/cloud/a/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/iflytek/cloud/a/b/b;

    const-string/jumbo v1, "max"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/a/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/a/b/b;->a:Lcom/iflytek/cloud/a/b/b;

    new-instance v0, Lcom/iflytek/cloud/a/b/b;

    const-string/jumbo v1, "normal"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/cloud/a/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/a/b/b;->b:Lcom/iflytek/cloud/a/b/b;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iflytek/cloud/a/b/b;

    sget-object v1, Lcom/iflytek/cloud/a/b/b;->a:Lcom/iflytek/cloud/a/b/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/cloud/a/b/b;->b:Lcom/iflytek/cloud/a/b/b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/iflytek/cloud/a/b/b;->c:[Lcom/iflytek/cloud/a/b/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/cloud/a/b/b;
    .locals 1

    const-class v0, Lcom/iflytek/cloud/a/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/a/b/b;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/cloud/a/b/b;
    .locals 1

    sget-object v0, Lcom/iflytek/cloud/a/b/b;->c:[Lcom/iflytek/cloud/a/b/b;

    invoke-virtual {v0}, [Lcom/iflytek/cloud/a/b/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/cloud/a/b/b;

    return-object v0
.end method
