.class Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$3;
.super Ljava/lang/Object;
.source "VoiceNoteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 217
    iput-object p1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$3;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$3;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0, p3}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;I)V

    .line 221
    return-void
.end method
