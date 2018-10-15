.class Lagu$a;
.super Ljava/lang/Object;
.source "UserGuideCustomSpeakerAdapter.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lagu;

.field private b:Landroid/graphics/drawable/AnimationDrawable;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;


# direct methods
.method public constructor <init>(Lagu;Landroid/widget/ImageView;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 0
    .param p1, "this$0"    # Lagu;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .prologue
    .line 158
    iput-object p1, p0, Lagu$a;->a:Lagu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p2, p0, Lagu$a;->c:Landroid/widget/ImageView;

    .line 160
    iput-object p3, p0, Lagu$a;->d:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    .line 161
    return-void
.end method

.method static synthetic a(Lagu$a;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0
    .param p0, "x0"    # Lagu$a;
    .param p1, "x1"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 152
    iput-object p1, p0, Lagu$a;->b:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method static synthetic a(Lagu$a;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lagu$a;

    .prologue
    .line 152
    iget-object v0, p0, Lagu$a;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lagu$a;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lagu$a;

    .prologue
    .line 152
    iget-object v0, p0, Lagu$a;->b:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lagu$a;->d:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Z)V

    .line 196
    iget-object v0, p0, Lagu$a;->b:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lagu$a;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 199
    :cond_0
    iget-object v0, p0, Lagu$a;->c:Landroid/widget/ImageView;

    new-instance v1, Lagu$a$3;

    invoke-direct {v1, p0}, Lagu$a$3;-><init>(Lagu$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 205
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lagu$a;->d:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Z)V

    .line 169
    iget-object v0, p0, Lagu$a;->c:Landroid/widget/ImageView;

    new-instance v1, Lagu$a$1;

    invoke-direct {v1, p0}, Lagu$a$1;-><init>(Lagu$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lagu$a;->d:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->a(Z)V

    .line 182
    iget-object v0, p0, Lagu$a;->b:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lagu$a;->b:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 185
    :cond_0
    iget-object v0, p0, Lagu$a;->c:Landroid/widget/ImageView;

    new-instance v1, Lagu$a$2;

    invoke-direct {v1, p0}, Lagu$a$2;-><init>(Lagu$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 164
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 214
    return-void
.end method
