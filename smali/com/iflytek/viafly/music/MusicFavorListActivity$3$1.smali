.class Lcom/iflytek/viafly/music/MusicFavorListActivity$3$1;
.super Ljava/lang/Object;
.source "MusicFavorListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/music/MusicFavorListActivity$3;->onDeleteCollect(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/music/MusicFavorListActivity$3;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/music/MusicFavorListActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/music/MusicFavorListActivity$3;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity$3$1;->a:Lcom/iflytek/viafly/music/MusicFavorListActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity$3$1;->a:Lcom/iflytek/viafly/music/MusicFavorListActivity$3;

    iget-object v0, v0, Lcom/iflytek/viafly/music/MusicFavorListActivity$3;->a:Lcom/iflytek/viafly/music/MusicFavorListActivity;

    const-string/jumbo v1, "\u53d6\u6d88\u6536\u85cf\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 317
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity$3$1;->a:Lcom/iflytek/viafly/music/MusicFavorListActivity$3;

    iget-object v0, v0, Lcom/iflytek/viafly/music/MusicFavorListActivity$3;->a:Lcom/iflytek/viafly/music/MusicFavorListActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->a(Lcom/iflytek/viafly/music/MusicFavorListActivity;J)J

    .line 318
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity$3$1;->a:Lcom/iflytek/viafly/music/MusicFavorListActivity$3;

    iget-object v0, v0, Lcom/iflytek/viafly/music/MusicFavorListActivity$3;->a:Lcom/iflytek/viafly/music/MusicFavorListActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->b(Lcom/iflytek/viafly/music/MusicFavorListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 319
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity$3$1;->a:Lcom/iflytek/viafly/music/MusicFavorListActivity$3;

    iget-object v0, v0, Lcom/iflytek/viafly/music/MusicFavorListActivity$3;->a:Lcom/iflytek/viafly/music/MusicFavorListActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->c(Lcom/iflytek/viafly/music/MusicFavorListActivity;)V

    .line 320
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicFavorListActivity$3$1;->a:Lcom/iflytek/viafly/music/MusicFavorListActivity$3;

    iget-object v0, v0, Lcom/iflytek/viafly/music/MusicFavorListActivity$3;->a:Lcom/iflytek/viafly/music/MusicFavorListActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/music/MusicFavorListActivity;->a()V

    .line 321
    return-void
.end method
