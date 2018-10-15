.class Lcom/iflytek/viafly/voicerole/StarAudioActivity$3;
.super Ljava/lang/Object;
.source "StarAudioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/voicerole/StarAudioActivity;->m()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/voicerole/StarAudioActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/voicerole/StarAudioActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity$3;->a:Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/StarAudioActivity$3;->a:Lcom/iflytek/viafly/voicerole/StarAudioActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/voicerole/StarAudioActivity;->c(Lcom/iflytek/viafly/voicerole/StarAudioActivity;I)V

    .line 1255
    return-void
.end method
