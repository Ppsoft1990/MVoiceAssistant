.class public final enum Lcom/iflytek/cloud/a/b/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/iflytek/cloud/a/b/c;

.field public static final enum b:Lcom/iflytek/cloud/a/b/c;

.field public static final enum c:Lcom/iflytek/cloud/a/b/c;

.field public static final enum d:Lcom/iflytek/cloud/a/b/c;

.field public static final enum e:Lcom/iflytek/cloud/a/b/c;

.field public static final enum f:Lcom/iflytek/cloud/a/b/c;

.field private static final synthetic g:[Lcom/iflytek/cloud/a/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/iflytek/cloud/a/b/c;

    const-string/jumbo v1, "init"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/cloud/a/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/a/b/c;->a:Lcom/iflytek/cloud/a/b/c;

    new-instance v0, Lcom/iflytek/cloud/a/b/c;

    const-string/jumbo v1, "start"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/cloud/a/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/a/b/c;->b:Lcom/iflytek/cloud/a/b/c;

    new-instance v0, Lcom/iflytek/cloud/a/b/c;

    const-string/jumbo v1, "recording"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/cloud/a/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/a/b/c;->c:Lcom/iflytek/cloud/a/b/c;

    new-instance v0, Lcom/iflytek/cloud/a/b/c;

    const-string/jumbo v1, "waitresult"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/cloud/a/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/a/b/c;->d:Lcom/iflytek/cloud/a/b/c;

    new-instance v0, Lcom/iflytek/cloud/a/b/c;

    const-string/jumbo v1, "exiting"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/cloud/a/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/a/b/c;->e:Lcom/iflytek/cloud/a/b/c;

    new-instance v0, Lcom/iflytek/cloud/a/b/c;

    const-string/jumbo v1, "exited"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/a/b/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/cloud/a/b/c;->f:Lcom/iflytek/cloud/a/b/c;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/iflytek/cloud/a/b/c;

    sget-object v1, Lcom/iflytek/cloud/a/b/c;->a:Lcom/iflytek/cloud/a/b/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/cloud/a/b/c;->b:Lcom/iflytek/cloud/a/b/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/cloud/a/b/c;->c:Lcom/iflytek/cloud/a/b/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/cloud/a/b/c;->d:Lcom/iflytek/cloud/a/b/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/cloud/a/b/c;->e:Lcom/iflytek/cloud/a/b/c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/cloud/a/b/c;->f:Lcom/iflytek/cloud/a/b/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/cloud/a/b/c;->g:[Lcom/iflytek/cloud/a/b/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/cloud/a/b/c;
    .locals 1

    const-class v0, Lcom/iflytek/cloud/a/b/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/a/b/c;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/cloud/a/b/c;
    .locals 1

    sget-object v0, Lcom/iflytek/cloud/a/b/c;->g:[Lcom/iflytek/cloud/a/b/c;

    invoke-virtual {v0}, [Lcom/iflytek/cloud/a/b/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/cloud/a/b/c;

    return-object v0
.end method
