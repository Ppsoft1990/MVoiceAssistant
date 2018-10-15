.class public Lcw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcw$a;,
        Lcw$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lco$a;

.field public final c:Lcn/a/a/u;

.field public d:Z


# direct methods
.method private constructor <init>(Lcn/a/a/u;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcw;->d:Z

    iput-object v1, p0, Lcw;->a:Ljava/lang/Object;

    iput-object v1, p0, Lcw;->b:Lco$a;

    iput-object p1, p0, Lcw;->c:Lcn/a/a/u;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lco$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lco$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcw;->d:Z

    iput-object p1, p0, Lcw;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcw;->b:Lco$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcw;->c:Lcn/a/a/u;

    return-void
.end method

.method public static a(Lcn/a/a/u;)Lcw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/a/a/u;",
            ")",
            "Lcw",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcw;

    invoke-direct {v0, p0}, Lcw;-><init>(Lcn/a/a/u;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lco$a;)Lcw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lco$a;",
            ")",
            "Lcw",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcw;

    invoke-direct {v0, p0, p1}, Lcw;-><init>(Ljava/lang/Object;Lco$a;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcw;->c:Lcn/a/a/u;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
