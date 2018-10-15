.class final Lawc$1;
.super Ljava/lang/Object;
.source "CreateAudioHelper.java"

# interfaces
.implements Lic;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lawc;->a(Landroid/content/Context;IJLic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lic;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lic;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lawc$1;->a:Lic;

    iput-object p2, p0, Lawc$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 56
    iget-object v0, p0, Lawc$1;->b:Landroid/content/Context;

    invoke-static {v0}, Lauw;->a(Landroid/content/Context;)Lauw;

    move-result-object v0

    invoke-virtual {v0}, Lauw;->d()V

    .line 57
    iget-object v0, p0, Lawc$1;->b:Landroid/content/Context;

    invoke-static {v0}, Lauw;->a(Landroid/content/Context;)Lauw;

    move-result-object v0

    invoke-virtual {v0}, Lauw;->b()V

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Lawc;->a(Z)Z

    .line 59
    iget-object v0, p0, Lawc$1;->a:Lic;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lawc$1;->a:Lic;

    invoke-interface {v0, p1}, Lic;->onCompleted(Landroid/media/MediaPlayer;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Lawc;->a(Z)Z

    .line 47
    iget-object v0, p0, Lawc$1;->b:Landroid/content/Context;

    invoke-static {v0}, Lauw;->a(Landroid/content/Context;)Lauw;

    move-result-object v0

    invoke-virtual {v0}, Lauw;->d()V

    .line 48
    iget-object v0, p0, Lawc$1;->b:Landroid/content/Context;

    invoke-static {v0}, Lauw;->a(Landroid/content/Context;)Lauw;

    move-result-object v0

    invoke-virtual {v0}, Lauw;->b()V

    .line 49
    iget-object v0, p0, Lawc$1;->a:Lic;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lawc$1;->a:Lic;

    invoke-interface {v0, p1, p2, p3}, Lic;->onError(Landroid/media/MediaPlayer;II)V

    .line 52
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 39
    iget-object v0, p0, Lawc$1;->a:Lic;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lawc$1;->a:Lic;

    invoke-interface {v0, p1}, Lic;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 42
    :cond_0
    return-void
.end method
