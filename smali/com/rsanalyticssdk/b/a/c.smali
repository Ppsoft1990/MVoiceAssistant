.class public final enum Lcom/rsanalyticssdk/b/a/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/rsanalyticssdk/b/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/rsanalyticssdk/b/a/c;

.field public static final enum b:Lcom/rsanalyticssdk/b/a/c;

.field public static final enum c:Lcom/rsanalyticssdk/b/a/c;

.field public static final enum d:Lcom/rsanalyticssdk/b/a/c;

.field private static final synthetic e:[Lcom/rsanalyticssdk/b/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/rsanalyticssdk/b/a/c;

    const-string/jumbo v1, "Exception"

    invoke-direct {v0, v1, v2}, Lcom/rsanalyticssdk/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rsanalyticssdk/b/a/c;->a:Lcom/rsanalyticssdk/b/a/c;

    new-instance v0, Lcom/rsanalyticssdk/b/a/c;

    const-string/jumbo v1, "HTTP"

    invoke-direct {v0, v1, v3}, Lcom/rsanalyticssdk/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rsanalyticssdk/b/a/c;->b:Lcom/rsanalyticssdk/b/a/c;

    new-instance v0, Lcom/rsanalyticssdk/b/a/c;

    const-string/jumbo v1, "Server"

    invoke-direct {v0, v1, v4}, Lcom/rsanalyticssdk/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rsanalyticssdk/b/a/c;->c:Lcom/rsanalyticssdk/b/a/c;

    new-instance v0, Lcom/rsanalyticssdk/b/a/c;

    const-string/jumbo v1, "Application"

    invoke-direct {v0, v1, v5}, Lcom/rsanalyticssdk/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rsanalyticssdk/b/a/c;->d:Lcom/rsanalyticssdk/b/a/c;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/rsanalyticssdk/b/a/c;

    sget-object v1, Lcom/rsanalyticssdk/b/a/c;->a:Lcom/rsanalyticssdk/b/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rsanalyticssdk/b/a/c;->b:Lcom/rsanalyticssdk/b/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/rsanalyticssdk/b/a/c;->c:Lcom/rsanalyticssdk/b/a/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/rsanalyticssdk/b/a/c;->d:Lcom/rsanalyticssdk/b/a/c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/rsanalyticssdk/b/a/c;->e:[Lcom/rsanalyticssdk/b/a/c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/rsanalyticssdk/b/a/c;
    .locals 1

    const-class v0, Lcom/rsanalyticssdk/b/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/rsanalyticssdk/b/a/c;

    return-object v0
.end method

.method public static values()[Lcom/rsanalyticssdk/b/a/c;
    .locals 1

    sget-object v0, Lcom/rsanalyticssdk/b/a/c;->e:[Lcom/rsanalyticssdk/b/a/c;

    invoke-virtual {v0}, [Lcom/rsanalyticssdk/b/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rsanalyticssdk/b/a/c;

    return-object v0
.end method
