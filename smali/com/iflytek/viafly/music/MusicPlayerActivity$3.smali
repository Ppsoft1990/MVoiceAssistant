.class Lcom/iflytek/viafly/music/MusicPlayerActivity$3;
.super Ljava/lang/Object;
.source "MusicPlayerActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/music/MusicPlayerActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/music/MusicPlayerActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/music/MusicPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/music/MusicPlayerActivity;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$3;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicPlayerActivity$3;->a:Lcom/iflytek/viafly/music/MusicPlayerActivity;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/music/MusicPlayerActivity;->a(F)V

    .line 271
    return-void
.end method
