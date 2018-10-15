.class public final enum Lcn/a/a/n$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/a/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/a/a/n$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/a/a/n$a;

.field public static final enum b:Lcn/a/a/n$a;

.field public static final enum c:Lcn/a/a/n$a;

.field public static final enum d:Lcn/a/a/n$a;

.field private static final synthetic e:[Lcn/a/a/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/a/a/n$a;

    const-string/jumbo v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcn/a/a/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/a/a/n$a;->a:Lcn/a/a/n$a;

    new-instance v0, Lcn/a/a/n$a;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcn/a/a/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/a/a/n$a;->b:Lcn/a/a/n$a;

    new-instance v0, Lcn/a/a/n$a;

    const-string/jumbo v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcn/a/a/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/a/a/n$a;->c:Lcn/a/a/n$a;

    new-instance v0, Lcn/a/a/n$a;

    const-string/jumbo v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lcn/a/a/n$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/a/a/n$a;->d:Lcn/a/a/n$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/a/a/n$a;

    sget-object v1, Lcn/a/a/n$a;->a:Lcn/a/a/n$a;

    aput-object v1, v0, v2

    sget-object v1, Lcn/a/a/n$a;->b:Lcn/a/a/n$a;

    aput-object v1, v0, v3

    sget-object v1, Lcn/a/a/n$a;->c:Lcn/a/a/n$a;

    aput-object v1, v0, v4

    sget-object v1, Lcn/a/a/n$a;->d:Lcn/a/a/n$a;

    aput-object v1, v0, v5

    sput-object v0, Lcn/a/a/n$a;->e:[Lcn/a/a/n$a;

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

.method public static valueOf(Ljava/lang/String;)Lcn/a/a/n$a;
    .locals 1

    const-class v0, Lcn/a/a/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/a/a/n$a;

    return-object v0
.end method

.method public static values()[Lcn/a/a/n$a;
    .locals 1

    sget-object v0, Lcn/a/a/n$a;->e:[Lcn/a/a/n$a;

    invoke-virtual {v0}, [Lcn/a/a/n$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/a/a/n$a;

    return-object v0
.end method
