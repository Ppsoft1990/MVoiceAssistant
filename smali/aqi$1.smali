.class Laqi$1;
.super Ljava/lang/Object;
.source "MusicNotificationManager.java"

# interfaces
.implements Laqc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqi;->a(ILandroid/widget/RemoteViews;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laqi;


# direct methods
.method constructor <init>(Laqi;)V
    .locals 0
    .param p1, "this$0"    # Laqi;

    .prologue
    .line 203
    iput-object p1, p0, Laqi$1;->a:Laqi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Laqi$1;->a:Laqi;

    invoke-static {v0}, Laqi;->a(Laqi;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 207
    return-void
.end method
