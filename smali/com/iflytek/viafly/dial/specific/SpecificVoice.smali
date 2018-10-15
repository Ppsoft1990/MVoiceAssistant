.class public Lcom/iflytek/viafly/dial/specific/SpecificVoice;
.super Ljava/lang/Object;
.source "SpecificVoice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:F

.field private g:Ljava/lang/String;

.field private h:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->l:Z

    .line 53
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IFLjava/lang/String;Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;Z)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "roleName"    # Ljava/lang/String;
    .param p5, "ttsRole"    # I
    .param p6, "size"    # F
    .param p7, "icon"    # Ljava/lang/String;
    .param p8, "status"    # Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;
    .param p9, "isLocalism"    # Z

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->b:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->c:Ljava/lang/String;

    .line 68
    iput p5, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->e:I

    .line 69
    iput p6, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->f:F

    .line 70
    iput-object p7, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->g:Ljava/lang/String;

    .line 71
    iput-object p8, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->h:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    .line 72
    iput p1, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->d:I

    .line 73
    iput-boolean p9, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->k:Z

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->l:Z

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "roleName"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->b:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->c:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->j:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->l:Z

    .line 60
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->i:I

    .line 105
    return-void
.end method

.method public a(Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->h:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    .line 99
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->j:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "isPlaying"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->l:Z

    .line 129
    return-void
.end method

.method public b()F
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->f:F

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->m:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->h:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->i:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->j:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->d:I

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->l:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->m:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->e:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a:Ljava/lang/String;

    return-object v0
.end method
