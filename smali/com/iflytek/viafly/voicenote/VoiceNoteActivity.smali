.class public Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;
.super Landroid/app/Activity;
.source "VoiceNoteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/iflytek/yd/speech/SpeechHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$b;,
        Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$a;,
        Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;,
        Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;
    }
.end annotation


# instance fields
.field private A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private final D:I

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Lbaq;

.field private I:Lbap;

.field private final J:I

.field private final K:I

.field private final L:I

.field private M:Landroid/os/Handler;

.field a:I

.field b:I

.field c:I

.field d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;

.field private g:Lcom/iflytek/yd/speech/ISpeechHandler;

.field private h:Lbaw;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbaw;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/widget/ListView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/view/ViewGroup;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/ScrollView;

.field private w:Landroid/widget/EditText;

.field private x:Landroid/widget/LinearLayout;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const-string/jumbo v0, "VoiceNoteActivity"

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->e:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;->list:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->f:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;

    .line 101
    const/16 v0, 0x32

    iput v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->D:I

    .line 102
    iput-boolean v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->E:Z

    .line 103
    iput-boolean v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->F:Z

    .line 105
    iput-boolean v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->G:Z

    .line 106
    iput v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a:I

    .line 107
    iput v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->b:I

    .line 108
    iput v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->c:I

    iput v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->d:I

    .line 774
    new-instance v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$6;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$6;-><init>(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->H:Lbaq;

    .line 800
    new-instance v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$7;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$7;-><init>(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->I:Lbap;

    .line 897
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->J:I

    .line 898
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->K:I

    .line 899
    const/4 v0, 0x3

    iput v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->L:I

    .line 900
    new-instance v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$8;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$8;-><init>(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)V

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->M:Landroid/os/Handler;

    return-void
.end method

.method private a()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 327
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 328
    .local v0, "speechIntent":Landroid/content/Intent;
    const-string/jumbo v1, "engine_type"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    const-string/jumbo v1, "web_scene"

    const-string/jumbo v2, "sms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string/jumbo v1, "vad_end_time"

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Lbaw;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    return-object v0
.end method

.method static synthetic a(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;Lbaw;)Lbaw;
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;
    .param p1, "x1"    # Lbaw;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    return-object p1
.end method

.method private a(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 698
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->i:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p1, v2, :cond_1

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbaw;

    .line 703
    .local v1, "item":Lbaw;
    sget-object v2, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;->detail:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->f:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;

    .line 704
    iput-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    .line 705
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v5}, Lbaw;->a(I)V

    .line 707
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->o:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 709
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 710
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 712
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 713
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 714
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 716
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    iget-object v3, v1, Lbaw;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 718
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    if-eqz v2, :cond_2

    .line 719
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->B:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    iget-object v3, v3, Lbaw;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->C:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u5b57"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 724
    .local v0, "extraParam_voice":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "d_type"

    const-string/jumbo v3, "view"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    const-string/jumbo v2, "d_category"

    const-string/jumbo v3, "note"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbax;->a(Landroid/content/Context;)Lbax;

    move-result-object v2

    const-string/jumbo v3, "FT89403"

    .line 727
    invoke-virtual {v2, v3, v0}, Lbax;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;Z)V
    .locals 8
    .param p1, "from"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;
    .param p2, "isSelectlast"    # Z

    .prologue
    const v7, 0x7f0a0012

    const v6, 0x7f0a0007

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 606
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    iget-object v1, v1, Lbaw;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->C:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u5b57"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-virtual {v0}, Lbaw;->a()I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->o:Landroid/widget/TextView;

    const-string/jumbo v1, "\u7f16\u8f91"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    :cond_0
    :goto_0
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;->voice:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

    if-ne v0, p1, :cond_2

    .line 625
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->M:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 628
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 629
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 630
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 631
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 653
    :goto_1
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;->edit:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->f:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;

    .line 654
    return-void

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->o:Landroid/widget/TextView;

    const-string/jumbo v1, "\u65b0\u5efa"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 633
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->g:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 635
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 636
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 637
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 638
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 639
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->setVisibility(I)V

    .line 641
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;->detail:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

    if-ne v0, p1, :cond_3

    if-eqz p2, :cond_3

    .line 642
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 645
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 646
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 647
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 648
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 650
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->M:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;
    .param p1, "x1"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;
    .param p2, "x2"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4
    .param p1, "refresh"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 446
    sget-object v0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;->list:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->f:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;

    .line 447
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->B:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->C:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->o:Landroid/widget/TextView;

    const-string/jumbo v1, "\u901f\u8bb0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 456
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 458
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->E:Z

    if-eqz v0, :cond_1

    .line 463
    :cond_0
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object v0

    invoke-virtual {v0}, Lbau;->c()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->i:Ljava/util/ArrayList;

    .line 464
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$a;

    invoke-direct {v1, p0, p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$a;-><init>(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->F:Z

    .line 469
    :cond_1
    iput-boolean v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->E:Z

    .line 470
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->G:Z

    return p1
.end method

.method static synthetic b(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 8
    .param p1, "isVoice"    # Z

    .prologue
    const-wide/16 v6, 0x64

    const v5, 0x7f0a0012

    const v4, 0x7f0a0007

    const/4 v3, 0x1

    .line 657
    if-eqz p1, :cond_2

    .line 659
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 662
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->M:Landroid/os/Handler;

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 664
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 665
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 666
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 667
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bottom tool mic is idle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->d()V

    goto :goto_0

    .line 675
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->g:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 677
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 678
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 679
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 680
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 682
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 685
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 686
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 687
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 689
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->M:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method private b()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x1

    const/16 v11, 0x32

    const/4 v6, 0x0

    .line 473
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->g:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v7}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 474
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->f:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;

    sget-object v8, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;->list:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;

    if-ne v7, v8, :cond_0

    move v5, v6

    .line 540
    :goto_0
    return v5

    .line 477
    :cond_0
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->f:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;

    sget-object v8, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;->detail:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;

    if-ne v7, v8, :cond_1

    .line 478
    iput-object v12, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    .line 479
    invoke-direct {p0, v6}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a(Z)V

    goto :goto_0

    .line 483
    :cond_1
    const/4 v3, 0x0

    .line 485
    .local v3, "refresh":Z
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    if-eqz v7, :cond_2

    .line 486
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    iget-object v8, v8, Lbaw;->h:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move v2, v5

    .line 487
    .local v2, "isChanged":Z
    :goto_1
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-virtual {v7}, Lbaw;->a()I

    move-result v7

    iget-object v8, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v7, :cond_7

    .line 488
    if-nez v2, :cond_4

    .line 489
    iput-object v12, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    .line 490
    const/4 v3, 0x0

    .line 537
    .end local v2    # "isChanged":Z
    :cond_2
    :goto_2
    iput-object v12, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    .line 538
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a(Z)V

    goto :goto_0

    :cond_3
    move v2, v6

    .line 486
    goto :goto_1

    .line 492
    .restart local v2    # "isChanged":Z
    :cond_4
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 494
    .local v4, "trimContent":Ljava/lang/String;
    const-string/jumbo v7, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 495
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-virtual {v6, v7}, Lbau;->c(Lbaw;)V

    .line 496
    const/4 v3, 0x1

    goto :goto_2

    .line 498
    :cond_5
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lbaw;->e:J

    .line 499
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string/jumbo v10, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm"

    invoke-static {v8, v9, v10}, Lbaa;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lbaw;->f:Ljava/lang/String;

    .line 500
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    iput-object v0, v7, Lbaw;->h:Ljava/lang/String;

    .line 501
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_6

    invoke-virtual {v4, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "trimContent":Ljava/lang/String;
    :cond_6
    iput-object v4, v7, Lbaw;->g:Ljava/lang/String;

    .line 502
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-virtual {v6, v7}, Lbau;->a(Lbaw;)V

    .line 503
    const/4 v3, 0x1

    .line 505
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 506
    .local v1, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "d_type"

    const-string/jumbo v7, "note"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string/jumbo v6, "d_operate"

    const-string/jumbo v7, "edit"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lbax;->a(Landroid/content/Context;)Lbax;

    move-result-object v6

    const-string/jumbo v7, "FT89405"

    .line 509
    invoke-virtual {v6, v7, v1}, Lbax;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_2

    .line 513
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    .restart local v0    # "content":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 515
    .restart local v4    # "trimContent":Ljava/lang/String;
    const-string/jumbo v7, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 516
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 518
    :cond_8
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lbaw;->e:J

    .line 519
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string/jumbo v10, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm"

    invoke-static {v8, v9, v10}, Lbaa;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lbaw;->f:Ljava/lang/String;

    .line 520
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    iput-object v0, v7, Lbaw;->h:Ljava/lang/String;

    .line 521
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_9

    invoke-virtual {v4, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "trimContent":Ljava/lang/String;
    :cond_9
    iput-object v4, v7, Lbaw;->g:Ljava/lang/String;

    .line 522
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-virtual {v6, v7}, Lbau;->b(Lbaw;)V

    .line 523
    const/4 v3, 0x1

    .line 525
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 526
    .restart local v1    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "d_type"

    const-string/jumbo v7, "note"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string/jumbo v6, "d_operate"

    const-string/jumbo v7, "create"

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lbax;->a(Landroid/content/Context;)Lbax;

    move-result-object v6

    const-string/jumbo v7, "FT89405"

    .line 529
    invoke-virtual {v6, v7, v1}, Lbax;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 532
    invoke-static {p0}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v6

    const-string/jumbo v7, "N_FAST_NOTE"

    invoke-virtual {v6, v7}, Lalq;->a(Ljava/lang/String;)V

    .line 533
    invoke-static {p0}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v6

    const-string/jumbo v7, "FAST_NOTE"

    invoke-virtual {v6, v7}, Lalq;->a(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method static synthetic c(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->C:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 10

    .prologue
    const/16 v9, 0x32

    const/4 v4, 0x1

    const/16 v8, 0x8

    const/4 v5, 0x0

    .line 544
    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 547
    .local v3, "trimContent":Ljava/lang/String;
    const-string/jumbo v6, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 548
    const-string/jumbo v4, "\u8bf7\u8f93\u5165\u6587\u5b57\u5185\u5bb9"

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 603
    .end local v3    # "trimContent":Ljava/lang/String;
    :goto_0
    return-void

    .line 552
    .restart local v3    # "trimContent":Ljava/lang/String;
    :cond_0
    sget-object v6, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;->detail:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;

    iput-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->f:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$NoteState;

    .line 554
    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->o:Landroid/widget/TextView;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 556
    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 557
    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->x:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 559
    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 560
    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 563
    const/4 v2, 0x0

    .line 564
    .local v2, "isChanged":Z
    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    if-eqz v6, :cond_1

    .line 565
    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    iget-object v7, v7, Lbaw;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move v2, v4

    .line 567
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 568
    iput-boolean v4, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->E:Z

    .line 571
    :cond_2
    iget-object v4, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 572
    iget-object v4, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lbaw;->e:J

    .line 573
    iget-object v4, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v8, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm"

    invoke-static {v6, v7, v8}, Lbaa;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lbaw;->f:Ljava/lang/String;

    .line 574
    iget-object v4, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->B:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    iget-object v6, v6, Lbaw;->f:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v4, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    iput-object v0, v4, Lbaw;->h:Ljava/lang/String;

    .line 576
    iget-object v4, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v9, :cond_3

    invoke-virtual {v3, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "trimContent":Ljava/lang/String;
    :cond_3
    iput-object v3, v4, Lbaw;->g:Ljava/lang/String;

    .line 578
    iget-object v4, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-virtual {v4}, Lbaw;->a()I

    move-result v4

    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_6

    .line 579
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object v4

    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-virtual {v4, v6}, Lbau;->a(Lbaw;)V

    .line 581
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 582
    .local v1, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "d_type"

    const-string/jumbo v6, "note"

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const-string/jumbo v4, "d_operate"

    const-string/jumbo v6, "edit"

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbax;->a(Landroid/content/Context;)Lbax;

    move-result-object v4

    const-string/jumbo v6, "FT89405"

    .line 585
    invoke-virtual {v4, v6, v1}, Lbax;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 599
    :goto_2
    iget-object v4, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lbaw;->a(I)V

    .line 602
    .end local v1    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    iget-object v4, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->clearFocus()V

    goto/16 :goto_0

    .restart local v3    # "trimContent":Ljava/lang/String;
    :cond_5
    move v2, v5

    .line 565
    goto/16 :goto_1

    .line 587
    .end local v3    # "trimContent":Ljava/lang/String;
    :cond_6
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object v4

    iget-object v6, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-virtual {v4, v6}, Lbau;->b(Lbaw;)V

    .line 589
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 590
    .restart local v1    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "d_type"

    const-string/jumbo v6, "note"

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string/jumbo v4, "d_operate"

    const-string/jumbo v6, "create"

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lbax;->a(Landroid/content/Context;)Lbax;

    move-result-object v4

    const-string/jumbo v6, "FT89405"

    .line 593
    invoke-virtual {v4, v6, v1}, Lbax;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 595
    invoke-static {p0}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v4

    const-string/jumbo v6, "N_FAST_NOTE"

    invoke-virtual {v4, v6}, Lalq;->a(Ljava/lang/String;)V

    .line 596
    invoke-static {p0}, Lalq;->a(Landroid/content/Context;)Lalq;

    move-result-object v4

    const-string/jumbo v6, "FAST_NOTE"

    invoke-virtual {v4, v6}, Lalq;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic d(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->n:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 930
    const-string/jumbo v0, ""

    .line 931
    .local v0, "shareContent":Ljava/lang/String;
    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 932
    iget-object v1, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 934
    :cond_0
    return-object v0
.end method

.method static synthetic e(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Lcom/iflytek/yd/speech/ISpeechHandler;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->g:Lcom/iflytek/yd/speech/ISpeechHandler;

    return-object v0
.end method

.method static synthetic i(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    return-object v0
.end method

.method static synthetic j(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic k(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Lbap;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->I:Lbap;

    return-object v0
.end method

.method static synthetic l(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->G:Z

    return v0
.end method

.method static synthetic m(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 938
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 939
    const/4 v0, 0x0

    const v1, 0x7f040002

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->overridePendingTransition(II)V

    .line 940
    return-void
.end method

.method public handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 5
    .param p1, "viaAsrResults"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 827
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v1, v2, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    .line 828
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "final result is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 830
    .local v0, "index":I
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 831
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    invoke-virtual {v2, p1}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->handleLastResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V

    .line 832
    return-void
.end method

.method public handleParticalResult([Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 5
    .param p1, "viaAsrResults"    # [Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 836
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget-object v1, v2, Lcom/iflytek/yd/speech/ViaAsrResult;->mContent:Ljava/lang/String;

    .line 837
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "partical result is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 839
    .local v0, "index":I
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 840
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v10, 0xc8

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f0b0832

    if-eq v7, v8, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f0b0844

    if-eq v7, v8, :cond_0

    .line 337
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->g:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v7}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 340
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 443
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 342
    :pswitch_1
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-static {p0, v7}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 343
    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->b()Z

    move-result v7

    if-nez v7, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->finish()V

    goto :goto_0

    .line 348
    :pswitch_2
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->i:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, v10, :cond_2

    .line 349
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "\u8bb0\u5f55\u6570\u91cf\u8fbe\u5230200\u6761\u4e0a\u9650\uff0c\u9700\u8981\u5220\u9664\u4e00\u90e8\u5206\u624d\u80fd\u65b0\u5efa\u54e6~"

    invoke-static {v7, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 352
    :cond_2
    new-instance v7, Lbaw;

    invoke-direct {v7}, Lbaw;-><init>()V

    iput-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    .line 353
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    iget-object v8, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v9}, Lbaw;->a(I)V

    .line 354
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lbaw;->e:J

    .line 355
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string/jumbo v10, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm"

    invoke-static {v8, v9, v10}, Lbaa;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lbaw;->f:Ljava/lang/String;

    .line 357
    sget-object v7, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;->text:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

    invoke-direct {p0, v7, v11}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;Z)V

    .line 360
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 361
    .local v2, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "d_type"

    const-string/jumbo v8, "text"

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string/jumbo v7, "d_category"

    const-string/jumbo v8, "note"

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lbax;->a(Landroid/content/Context;)Lbax;

    move-result-object v7

    const-string/jumbo v8, "FT89402"

    .line 364
    invoke-virtual {v7, v8, v2}, Lbax;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 367
    .end local v2    # "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_3
    sget-object v7, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;->detail:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

    invoke-direct {p0, v7, v11}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;Z)V

    goto/16 :goto_0

    .line 370
    :pswitch_4
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->i:Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, v10, :cond_3

    .line 371
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "\u8bb0\u5f55\u6570\u91cf\u8fbe\u5230200\u6761\u4e0a\u9650\uff0c\u9700\u8981\u5220\u9664\u4e00\u90e8\u5206\u624d\u80fd\u65b0\u5efa\u54e6~"

    invoke-static {v7, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 374
    :cond_3
    new-instance v7, Lbaw;

    invoke-direct {v7}, Lbaw;-><init>()V

    iput-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    .line 375
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    iget-object v8, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lbaw;->a(I)V

    .line 376
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lbaw;->e:J

    .line 377
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string/jumbo v10, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm"

    invoke-static {v8, v9, v10}, Lbaa;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lbaw;->f:Ljava/lang/String;

    .line 379
    sget-object v7, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;->voice:Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;

    invoke-direct {p0, v7, v11}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$EditFrom;Z)V

    .line 381
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 382
    .local v3, "extraParam_voice":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "d_type"

    const-string/jumbo v8, "voice"

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string/jumbo v7, "d_category"

    const-string/jumbo v8, "note"

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lbax;->a(Landroid/content/Context;)Lbax;

    move-result-object v7

    const-string/jumbo v8, "FT89402"

    .line 385
    invoke-virtual {v7, v8, v3}, Lbax;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 388
    .end local v3    # "extraParam_voice":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_5
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-static {p0, v7}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 389
    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->c()V

    goto/16 :goto_0

    .line 392
    :pswitch_6
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-static {p0, v7}, Lcom/iflytek/yd/util/UIUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 393
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    if-eqz v7, :cond_1

    .line 394
    new-instance v7, Lbav;

    iget-object v8, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    iget-wide v8, v8, Lbaw;->d:J

    iget-object v10, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->I:Lbap;

    invoke-direct {v7, p0, v8, v9, v10}, Lbav;-><init>(Landroid/content/Context;JLbap;)V

    invoke-virtual {v7}, Lbav;->show()V

    .line 396
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 397
    .local v1, "delet_trigger":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "d_type"

    const-string/jumbo v8, "deleteBtn"

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string/jumbo v7, "d_operate"

    const-string/jumbo v8, "touch"

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lbax;->a(Landroid/content/Context;)Lbax;

    move-result-object v7

    const-string/jumbo v8, "FT89407"

    .line 400
    invoke-virtual {v7, v8, v1}, Lbax;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 404
    .end local v1    # "delet_trigger":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_7
    new-instance v4, Lcom/iflytek/yd/system/ConnectionManager;

    invoke-direct {v4, p0}, Lcom/iflytek/yd/system/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 405
    .local v4, "mConnectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    invoke-virtual {v4}, Lcom/iflytek/yd/system/ConnectionManager;->isNetworkConnected()Z

    move-result v7

    if-nez v7, :cond_4

    .line 406
    const-string/jumbo v7, "\u7f51\u7edc\u672a\u6253\u5f00\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {p0, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 409
    :cond_4
    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    iget-object v7, v7, Lbaw;->h:Ljava/lang/String;

    if-eqz v7, :cond_5

    const-string/jumbo v7, ""

    iget-object v8, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    iget-object v8, v8, Lbaw;->h:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 410
    new-instance v7, Lbaz;

    iget-object v8, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    iget-object v8, v8, Lbaw;->h:Ljava/lang/String;

    invoke-direct {v7, p0, v8}, Lbaz;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v7}, Lbaz;->show()V

    .line 413
    :cond_5
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 414
    .local v5, "play_param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "d_type"

    const-string/jumbo v8, "play"

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string/jumbo v7, "d_category"

    const-string/jumbo v8, "note"

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lbax;->a(Landroid/content/Context;)Lbax;

    move-result-object v7

    const-string/jumbo v8, "FT89403"

    .line 417
    invoke-virtual {v7, v8, v5}, Lbax;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 420
    .end local v4    # "mConnectionManager":Lcom/iflytek/yd/system/ConnectionManager;
    .end local v5    # "play_param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_8
    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->d()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "content":Ljava/lang/String;
    const-string/jumbo v7, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 422
    new-instance v7, Lbay;

    invoke-direct {v7, p0, v0}, Lbay;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v7}, Lbay;->show()V

    .line 427
    :goto_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 428
    .local v6, "share_param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "d_type"

    const-string/jumbo v8, "share"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string/jumbo v7, "d_category"

    const-string/jumbo v8, "note"

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lbax;->a(Landroid/content/Context;)Lbax;

    move-result-object v7

    const-string/jumbo v8, "FT89403"

    .line 431
    invoke-virtual {v7, v8, v6}, Lbax;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 424
    .end local v6    # "share_param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    const-string/jumbo v7, "\u5206\u4eab\u6587\u672c\u4e3a\u7a7a"

    invoke-static {p0, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 434
    .end local v0    # "content":Ljava/lang/String;
    :pswitch_9
    invoke-direct {p0, v11}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->b(Z)V

    goto/16 :goto_0

    .line 437
    :pswitch_a
    invoke-direct {p0, v9}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->b(Z)V

    goto/16 :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x7f0b0830
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->requestWindowFeature(I)Z

    .line 116
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v2

    const-string/jumbo v3, "FT90201"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 117
    invoke-static {p0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v2

    const-string/jumbo v3, "LX_100100"

    invoke-virtual {v2, v3}, Lwz;->a(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lbau;->a()Lbau;

    .line 121
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/framework/business/speech/SpeechHandlerFactory;->newInstance(Landroid/content/Context;)Lcom/iflytek/yd/speech/ISpeechHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->g:Lcom/iflytek/yd/speech/ISpeechHandler;

    .line 122
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->g:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v2, p0}, Lcom/iflytek/yd/speech/ISpeechHandler;->setCallback(Lcom/iflytek/yd/speech/SpeechHandlerCallback;)V

    .line 124
    const v2, 0x7f030169

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->setContentView(I)V

    .line 126
    const v2, 0x7f0b0830

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->k:Landroid/widget/ImageView;

    .line 127
    const v2, 0x7f0b0832

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->l:Landroid/widget/ImageView;

    .line 128
    const v2, 0x7f0b0833

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->m:Landroid/widget/ImageView;

    .line 130
    const v2, 0x7f0b0831

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->o:Landroid/widget/TextView;

    .line 132
    const v2, 0x7f0b0834

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->n:Landroid/view/ViewGroup;

    .line 133
    const v2, 0x7f0b0835

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->p:Landroid/widget/ImageView;

    .line 134
    const v2, 0x7f0b0836

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->q:Landroid/widget/ImageView;

    .line 135
    const v2, 0x7f0b0837

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->r:Landroid/widget/ImageView;

    .line 137
    const v2, 0x7f0b083f

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->B:Landroid/widget/TextView;

    .line 138
    const v2, 0x7f0b0840

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->C:Landroid/widget/TextView;

    .line 140
    const v2, 0x7f0b083c

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->s:Landroid/widget/ImageView;

    .line 141
    const v2, 0x7f0b0838

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->t:Landroid/widget/RelativeLayout;

    .line 142
    const v2, 0x7f0b083d

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->u:Landroid/widget/LinearLayout;

    .line 143
    const v2, 0x7f0b0845

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    .line 145
    const v2, 0x7f0b083e

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->v:Landroid/widget/ScrollView;

    .line 146
    const v2, 0x7f0b0841

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    .line 147
    const v2, 0x7f0b0842

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->x:Landroid/widget/LinearLayout;

    .line 149
    const v2, 0x7f0b0843

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->y:Landroid/widget/ImageView;

    .line 150
    const v2, 0x7f0b0844

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->z:Landroid/widget/ImageView;

    .line 152
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->q:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->r:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    new-instance v3, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$1;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$1;-><init>(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 189
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    new-instance v3, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$2;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$2;-><init>(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 212
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object v2

    invoke-virtual {v2}, Lbau;->c()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->i:Ljava/util/ArrayList;

    .line 214
    const v2, 0x7f0b0839

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->j:Landroid/widget/ListView;

    .line 216
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->j:Landroid/widget/ListView;

    new-instance v3, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$a;

    invoke-direct {v3, p0, p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$a;-><init>(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->j:Landroid/widget/ListView;

    new-instance v3, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$3;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$3;-><init>(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 223
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->j:Landroid/widget/ListView;

    new-instance v3, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$4;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$4;-><init>(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 243
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 244
    .local v1, "vcfg":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->a:I

    .line 245
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->b:I

    .line 247
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->v:Landroid/widget/ScrollView;

    new-instance v3, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;

    invoke-direct {v3, p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity$5;-><init>(Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 286
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    iget-object v3, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->H:Lbaq;

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->setOnMicEventListener(Lbaq;)V

    .line 288
    iget-object v2, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->M:Landroid/os/Handler;

    const/4 v3, 0x3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 291
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 293
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 294
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 295
    .local v0, "statusBarColor":I
    invoke-virtual {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 297
    .end local v0    # "statusBarColor":I
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 320
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 321
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 889
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->h:Lbaw;

    if-eqz v0, :cond_0

    .line 890
    invoke-direct {p0}, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    const/4 v0, 0x1

    .line 894
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 303
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->g:Lcom/iflytek/yd/speech/ISpeechHandler;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->g:Lcom/iflytek/yd/speech/ISpeechHandler;

    invoke-interface {v0}, Lcom/iflytek/yd/speech/ISpeechHandler;->stop()V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 312
    :cond_1
    iget-boolean v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->F:Z

    if-eqz v0, :cond_2

    .line 313
    invoke-static {}, Lbau;->a()Lbau;

    move-result-object v0

    invoke-virtual {v0}, Lbau;->b()V

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->F:Z

    .line 316
    :cond_2
    return-void
.end method

.method public updateUIAfterResult()V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->updateUIAfterResult()V

    .line 845
    return-void
.end method

.method public updateUIInCancelState()V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->updateUIInCancelState()V

    .line 850
    return-void
.end method

.method public updateUIInErrorState(III)V
    .locals 1
    .param p1, "errTitleId"    # I
    .param p2, "errDetailId"    # I
    .param p3, "errId"    # I

    .prologue
    .line 854
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->updateUIInErrorState(III)V

    .line 855
    return-void
.end method

.method public updateUIInInitState(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 859
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->updateUIInInitState(Landroid/content/Intent;)V

    .line 860
    return-void
.end method

.method public updateUIInRecodingState()V
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->updateUIInRecodingState()V

    .line 865
    return-void
.end method

.method public updateUIInRecodingState(I)V
    .locals 1
    .param p1, "volume"    # I

    .prologue
    .line 869
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->updateUIInRecodingState(I)V

    .line 870
    return-void
.end method

.method public updateUIInSNState()V
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->updateUIInSNState()V

    .line 875
    return-void
.end method

.method public updateUIInTimeout()V
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->updateUIInTimeout()V

    .line 880
    return-void
.end method

.method public updateUIInWaitingResultState()V
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/iflytek/viafly/voicenote/VoiceNoteActivity;->A:Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/voicenote/VoiceNoteMicView;->updateUIInWaitingResultState()V

    .line 885
    return-void
.end method
