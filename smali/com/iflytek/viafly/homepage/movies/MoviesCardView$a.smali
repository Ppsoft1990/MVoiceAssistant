.class Lcom/iflytek/viafly/homepage/movies/MoviesCardView$a;
.super Landroid/os/Handler;
.source "MoviesCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/movies/MoviesCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/viafly/homepage/movies/MoviesCardView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/homepage/movies/MoviesCardView;)V
    .locals 1
    .param p1, "activity"    # Lcom/iflytek/viafly/homepage/movies/MoviesCardView;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 153
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView$a;->a:Ljava/lang/ref/WeakReference;

    .line 154
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 158
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;

    .line 159
    .local v0, "outer":Lcom/iflytek/viafly/homepage/movies/MoviesCardView;
    if-eqz v0, :cond_0

    .line 160
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 161
    invoke-static {v0}, Lcom/iflytek/viafly/homepage/movies/MoviesCardView;->a(Lcom/iflytek/viafly/homepage/movies/MoviesCardView;)V

    .line 164
    :cond_0
    return-void
.end method
