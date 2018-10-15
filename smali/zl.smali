.class public Lzl;
.super Ljava/lang/Object;
.source "BlueToothHelper.java"

# interfaces
.implements Lgs$a;
.implements Ljp;


# static fields
.field private static b:Lzl;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzl;->a:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;)Lzl;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sget-object v0, Lzl;->b:Lzl;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lzl;

    invoke-direct {v0, p0}, Lzl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lzl;->b:Lzl;

    .line 37
    :cond_0
    sget-object v0, Lzl;->b:Lzl;

    return-object v0
.end method

.method public static a(Z)V
    .locals 2
    .param p0, "hasTested"    # Z

    .prologue
    .line 165
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_IS_BLUETOOTH_HEADSET_TESTED"

    invoke-virtual {v0, v1, p0}, Lil;->a(Ljava/lang/String;Z)V

    .line 166
    return-void
.end method

.method public static k()Z
    .locals 4

    .prologue
    .line 156
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_IS_BLUETOOTH_HEADSET_TESTED"

    invoke-virtual {v1, v2}, Lil;->c(Ljava/lang/String;)Z

    move-result v0

    .line 157
    .local v0, "ret":Z
    const-string/jumbo v1, "BlueToothHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBluetoothHeadsetTested() | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 190
    const-string/jumbo v0, "BlueToothHelper"

    const-string/jumbo v1, "openBluetoothDetectActivity()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 42
    invoke-static {}, Lzl;->k()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v2

    invoke-virtual {v2}, Lgs;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-static {}, Lagm;->n()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "playFlag":Ljava/lang/String;
    invoke-static {}, Lagm;->m()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "recordFlag":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {v2}, Lzl;->a(Z)V

    .line 46
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "1"

    .line 47
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    const-string/jumbo v2, "BlueToothHelper"

    const-string/jumbo v3, "full support"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v0    # "playFlag":Ljava/lang/String;
    .end local v1    # "recordFlag":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lzl;->a:Landroid/content/Context;

    invoke-static {v2}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v2

    invoke-virtual {v2}, Lbbp;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    iget-object v2, p0, Lzl;->a:Landroid/content/Context;

    invoke-static {v2}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v2

    invoke-virtual {v2}, Lbbp;->a()V

    .line 69
    :cond_1
    iget-object v2, p0, Lzl;->a:Landroid/content/Context;

    invoke-static {v2}, Lwr;->a(Landroid/content/Context;)Lwr;

    move-result-object v2

    const-string/jumbo v3, "1024"

    invoke-virtual {v2, v3}, Lwr;->a(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, p0, Lzl;->a:Landroid/content/Context;

    invoke-static {v2}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v2

    invoke-virtual {v2}, Lbbp;->a()V

    .line 76
    iget-object v2, p0, Lzl;->a:Landroid/content/Context;

    invoke-static {v2}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v2

    const-wide/16 v4, 0xfa0

    invoke-virtual {v2, v6, v6, v4, v5}, Lbbp;->a(IIJ)V

    .line 82
    :cond_2
    :goto_1
    return-void

    .line 52
    .restart local v0    # "playFlag":Ljava/lang/String;
    .restart local v1    # "recordFlag":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "2"

    .line 53
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 54
    const-string/jumbo v2, "BlueToothHelper"

    const-string/jumbo v3, "refuse support"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 60
    :cond_4
    const-string/jumbo v2, "BlueToothHelper"

    const-string/jumbo v3, "detect support"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0}, Lzl;->l()V

    goto :goto_0
.end method

.method public b()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xfa0

    const/4 v4, 0x0

    .line 86
    invoke-static {}, Lagm;->n()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "playFlag":Ljava/lang/String;
    invoke-static {}, Lagm;->m()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "recordFlag":Ljava/lang/String;
    const-string/jumbo v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "2"

    .line 89
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v2, p0, Lzl;->a:Landroid/content/Context;

    invoke-static {v2}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v2

    invoke-virtual {v2}, Lbbp;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    iget-object v2, p0, Lzl;->a:Landroid/content/Context;

    invoke-static {v2}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v2

    invoke-virtual {v2}, Lbbp;->a()V

    .line 99
    iget-object v2, p0, Lzl;->a:Landroid/content/Context;

    invoke-static {v2}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3, v6, v7}, Lbbp;->a(IIJ)V

    goto :goto_0

    .line 104
    :cond_2
    invoke-static {}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->a()Lcom/iflytek/base/speech/impl/SpeechRecognizer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/base/speech/impl/SpeechRecognizer;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lzl;->a:Landroid/content/Context;

    invoke-static {v2}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v2

    invoke-virtual {v2}, Lbbp;->a()V

    .line 108
    iget-object v2, p0, Lzl;->a:Landroid/content/Context;

    invoke-static {v2}, Lbbp;->a(Landroid/content/Context;)Lbbp;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v6, v7}, Lbbp;->a(IIJ)V

    goto :goto_0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public i()V
    .locals 2

    .prologue
    .line 198
    invoke-static {}, Lagm;->m()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "recordFlag":Ljava/lang/String;
    const-string/jumbo v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v1

    invoke-virtual {v1}, Lgs;->g()Z

    .line 202
    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Lagm;->m()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "recordFlag":Ljava/lang/String;
    const-string/jumbo v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v1

    invoke-virtual {v1}, Lgs;->h()V

    .line 210
    :cond_0
    return-void
.end method
