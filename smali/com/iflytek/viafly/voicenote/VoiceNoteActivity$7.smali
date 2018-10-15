.class Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$7;
.super Ljava/lang/Object;
.source "VoiceNoteActivity.java"

# interfaces
.implements Lbap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    .prologue
    .line 800
    iput-object p1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$7;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3
    .param p1, "deletekey"    # J

    .prologue
    .line 803
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lbau;->a(J)V

    .line 804
    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$7;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;Lbaw;)Lbaw;

    .line 805
    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$7;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->b(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;Z)V

    .line 807
    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$7;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->i(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 809
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 810
    .local v0, "delet_trigger":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_type"

    const-string/jumbo v2, "longClick"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    const-string/jumbo v1, "d_operate"

    const-string/jumbo v2, "success"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$7;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbax;->a(Landroid/content/Context;)Lbax;

    move-result-object v1

    const-string/jumbo v2, "FT89407"

    .line 813
    invoke-virtual {v1, v2, v0}, Lbax;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 822
    :goto_0
    return-void

    .line 816
    .end local v0    # "delet_trigger":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 817
    .restart local v0    # "delet_trigger":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_type"

    const-string/jumbo v2, "deleteBtn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    const-string/jumbo v1, "d_operate"

    const-string/jumbo v2, "success"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$7;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-virtual {v1}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbax;->a(Landroid/content/Context;)Lbax;

    move-result-object v1

    const-string/jumbo v2, "FT89407"

    .line 820
    invoke-virtual {v1, v2, v0}, Lbax;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method
