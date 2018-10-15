.class Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$1;
.super Ljava/lang/Object;
.source "VoiceNoteMicView.java"

# interfaces
.implements Lpf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$1;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const-string/jumbo v0, "VoiceNoteMicView"

    const-string/jumbo v1, "onDenied"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$1;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 240
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$1;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->a(Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;)Lbaq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView$1;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->a(Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;)Lbaq;

    move-result-object v0

    invoke-interface {v0}, Lbaq;->b()V

    .line 243
    :cond_0
    return-void
.end method

.method public onGranted(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const-string/jumbo v0, "VoiceNoteMicView"

    const-string/jumbo v1, "onGranted"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method
