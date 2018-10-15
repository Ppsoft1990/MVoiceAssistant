.class Lcom/iflytek/viafly/voicerole/MyVoiceActivity$1;
.super Ljava/lang/Object;
.source "MyVoiceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

.field final synthetic b:Lcom/iflytek/viafly/voicerole/MyVoiceActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/voicerole/MyVoiceActivity;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$1;->b:Lcom/iflytek/viafly/voicerole/MyVoiceActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$1;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$1;->b:Lcom/iflytek/viafly/voicerole/MyVoiceActivity;

    iget-object v1, p0, Lcom/iflytek/viafly/voicerole/MyVoiceActivity$1;->a:Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/voicerole/MyVoiceActivity;->a(Lcom/iflytek/viafly/voicerole/MyVoiceActivity;Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;)V

    .line 128
    return-void
.end method
