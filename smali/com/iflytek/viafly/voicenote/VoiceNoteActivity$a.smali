.class Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$a;
.super Landroid/widget/BaseAdapter;
.source "VoiceNoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 732
    iput-object p1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$a;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 733
    iput-object p2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$a;->b:Landroid/content/Context;

    .line 734
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$a;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->j(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$a;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->j(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 742
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$a;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->j(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$a;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->j(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 743
    :cond_0
    const/4 v0, 0x0

    .line 745
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$a;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->j(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 750
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 755
    if-nez p2, :cond_0

    .line 756
    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$a;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03016b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 757
    new-instance v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$b;-><init>(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$1;)V

    .line 758
    .local v0, "holder":Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$b;
    const v1, 0x7f0b0848

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$b;->a:Landroid/widget/TextView;

    .line 759
    const v1, 0x7f0b0849

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$b;->b:Landroid/widget/TextView;

    .line 760
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 762
    .end local v0    # "holder":Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$b;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$b;

    iget-object v2, v1, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$b;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$a;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->j(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbaw;

    iget-object v1, v1, Lbaw;->f:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$b;

    iget-object v2, v1, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$b;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$a;->a:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->j(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbaw;

    iget-object v1, v1, Lbaw;->g:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    return-object p2
.end method
