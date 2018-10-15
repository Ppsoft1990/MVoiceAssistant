.class Lcc$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcc;


# direct methods
.method constructor <init>(Lcc;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcc$2;->a:Lcc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcc$2;->a:Lcc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcc;->c(I)V

    .line 336
    return-void
.end method
