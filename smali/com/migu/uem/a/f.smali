.class public abstract Lcom/migu/uem/a/f;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/migu/uem/a/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/a/f;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/migu/uem/a/f;->a:Landroid/content/Context;

    return-void
.end method
