.class Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$4;
.super Ljava/lang/Object;
.source "VoiceNoteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 223
    iput-object p1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$4;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$4;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->j(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$4;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->j(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p3, v2, :cond_1

    .line 228
    :cond_0
    const/4 v2, 0x0

    .line 239
    :goto_0
    return v2

    .line 230
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$4;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->j(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbaw;

    .line 231
    .local v1, "item":Lbaw;
    new-instance v2, Lbav;

    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$4;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    iget-wide v4, v1, Lbaw;->d:J

    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$4;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v6}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->k(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Lbap;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lbav;-><init>(Landroid/content/Context;JLbap;)V

    invoke-virtual {v2}, Lbav;->show()V

    .line 233
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    .local v0, "delet_trigger":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_type"

    const-string/jumbo v3, "longClick"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string/jumbo v2, "d_operate"

    const-string/jumbo v3, "touch"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$4;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbax;->a(Landroid/content/Context;)Lbax;

    move-result-object v2

    const-string/jumbo v3, "FT89407"

    .line 237
    invoke-virtual {v2, v3, v0}, Lbax;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 239
    const/4 v2, 0x1

    goto :goto_0
.end method
