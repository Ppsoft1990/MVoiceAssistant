.class public Ladn;
.super Ljava/lang/Object;
.source "SpecificVoiceHandler.java"


# static fields
.field private static e:Ladn;


# instance fields
.field protected a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/iflytek/viafly/dial/specific/SpecificVoice;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Landroid/media/MediaPlayer;

.field private h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/util/SparseIntArray;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v0, "SpecificVoiceHandler"

    iput-object v0, p0, Ladn;->b:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "dial"

    iput-object v0, p0, Ladn;->c:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, ".ogg"

    iput-object v0, p0, Ladn;->d:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Ladn;->f:Landroid/content/Context;

    .line 62
    invoke-virtual {p0}, Ladn;->a()V

    .line 63
    return-void
.end method

.method public static a(Landroid/content/Context;)Ladn;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    sget-object v0, Ladn;->e:Ladn;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Ladn;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Ladn;->e:Ladn;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ladn;

    invoke-direct {v0, p0}, Ladn;-><init>(Landroid/content/Context;)V

    sput-object v0, Ladn;->e:Ladn;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Ladn;->e:Ladn;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(ILjava/lang/String;Z)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "icon"    # Ljava/lang/String;
    .param p3, "isLocalism"    # Z

    .prologue
    .line 236
    iget-object v0, p0, Ladn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ladn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 239
    :cond_0
    sget-object v8, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_INIT:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    .line 241
    .local v8, "initStatus":Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;
    if-nez p1, :cond_1

    .line 242
    sget-object v8, Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;->STATUS_DOWNLOADED:Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;

    .line 244
    :cond_1
    iget-object v10, p0, Ladn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    iget-object v1, p0, Ladn;->k:Landroid/util/SparseArray;

    .line 246
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v1, p0, Ladn;->h:Landroid/util/SparseArray;

    .line 247
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v1, p0, Ladn;->i:Landroid/util/SparseArray;

    .line 248
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v1, p0, Ladn;->l:Landroid/util/SparseIntArray;

    .line 249
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    iget-object v1, p0, Ladn;->j:Landroid/util/SparseArray;

    .line 250
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move v1, p1

    move-object v7, p2

    move v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IFLjava/lang/String;Lcom/iflytek/viafly/dial/specific/SpecificVoice$Status;Z)V

    .line 244
    invoke-virtual {v10, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 69
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Ladn;->g:Landroid/media/MediaPlayer;

    .line 71
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Ladn;->k:Landroid/util/SparseArray;

    .line 72
    iget-object v4, p0, Ladn;->k:Landroid/util/SparseArray;

    const-string/jumbo v5, "3FCC055E-2C68-ACE6-A0E7-801DC2D96E52"

    invoke-virtual {v4, v8, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 73
    iget-object v4, p0, Ladn;->k:Landroid/util/SparseArray;

    const-string/jumbo v5, "C165B068-E553-6203-3814-E6E7E58A7FAB"

    invoke-virtual {v4, v7, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 74
    iget-object v4, p0, Ladn;->k:Landroid/util/SparseArray;

    const-string/jumbo v5, "0CCA4984-7A95-D9F3-63A1-A3C613CD8957"

    invoke-virtual {v4, v10, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 75
    iget-object v4, p0, Ladn;->k:Landroid/util/SparseArray;

    const-string/jumbo v5, "307CE946-226B-F895-D46D-44FD8A180E54"

    invoke-virtual {v4, v11, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 76
    iget-object v4, p0, Ladn;->k:Landroid/util/SparseArray;

    const-string/jumbo v5, "E0559732-ADDE-E4A6-24C1-B3E2E0E0CE68"

    invoke-virtual {v4, v9, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 77
    iget-object v4, p0, Ladn;->k:Landroid/util/SparseArray;

    const/4 v5, 0x5

    const-string/jumbo v6, "4C1B8CC8-E4FF-EC3F-8418-3E582C2D496E"

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 78
    iget-object v4, p0, Ladn;->k:Landroid/util/SparseArray;

    const/4 v5, 0x6

    const-string/jumbo v6, "A85F80D9-302B-5138-5BA5-DA8A75382F27"

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 79
    iget-object v4, p0, Ladn;->k:Landroid/util/SparseArray;

    const/4 v5, 0x7

    const-string/jumbo v6, "CF7562DB-6BD2-7B82-3FB3-EA426A24BC55"

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 80
    iget-object v4, p0, Ladn;->k:Landroid/util/SparseArray;

    const/16 v5, 0x8

    const-string/jumbo v6, "542EDBF1-44C8-0C7B-322A-AB640241116B"

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 82
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Ladn;->h:Landroid/util/SparseArray;

    .line 83
    iget-object v4, p0, Ladn;->h:Landroid/util/SparseArray;

    const-string/jumbo v5, "\u666e\u901a\u8bdd(\u9ed8\u8ba4)"

    invoke-virtual {v4, v8, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 84
    iget-object v4, p0, Ladn;->h:Landroid/util/SparseArray;

    const-string/jumbo v5, "\u4e1c\u5317\u8bdd"

    invoke-virtual {v4, v7, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 85
    iget-object v4, p0, Ladn;->h:Landroid/util/SparseArray;

    const-string/jumbo v5, "\u6cb3\u5357\u8bdd"

    invoke-virtual {v4, v10, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 86
    iget-object v4, p0, Ladn;->h:Landroid/util/SparseArray;

    const-string/jumbo v5, "\u6e56\u5357\u8bdd"

    invoke-virtual {v4, v11, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 87
    iget-object v4, p0, Ladn;->h:Landroid/util/SparseArray;

    const-string/jumbo v5, "\u56db\u5ddd\u8bdd"

    invoke-virtual {v4, v9, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 88
    iget-object v4, p0, Ladn;->h:Landroid/util/SparseArray;

    const/4 v5, 0x5

    const-string/jumbo v6, "\u7ca4\u8bed"

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 89
    iget-object v4, p0, Ladn;->h:Landroid/util/SparseArray;

    const/4 v5, 0x6

    const-string/jumbo v6, "\u6653\u7433"

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 90
    iget-object v4, p0, Ladn;->h:Landroid/util/SparseArray;

    const/4 v5, 0x7

    const-string/jumbo v6, "\u6653\u5cf0"

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 91
    iget-object v4, p0, Ladn;->h:Landroid/util/SparseArray;

    const/16 v5, 0x8

    const-string/jumbo v6, "\u6960\u6960"

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 93
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Ladn;->i:Landroid/util/SparseArray;

    .line 94
    iget-object v4, p0, Ladn;->i:Landroid/util/SparseArray;

    const-string/jumbo v5, "jiajia"

    invoke-virtual {v4, v8, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 95
    iget-object v4, p0, Ladn;->i:Landroid/util/SparseArray;

    const-string/jumbo v5, "xiaoqian"

    invoke-virtual {v4, v7, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 96
    iget-object v4, p0, Ladn;->i:Landroid/util/SparseArray;

    const-string/jumbo v5, "xiaokun"

    invoke-virtual {v4, v10, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 97
    iget-object v4, p0, Ladn;->i:Landroid/util/SparseArray;

    const-string/jumbo v5, "xiaoqiang"

    invoke-virtual {v4, v11, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 98
    iget-object v4, p0, Ladn;->i:Landroid/util/SparseArray;

    const-string/jumbo v5, "xiaorong"

    invoke-virtual {v4, v9, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 99
    iget-object v4, p0, Ladn;->i:Landroid/util/SparseArray;

    const/4 v5, 0x5

    const-string/jumbo v6, "xiaomei"

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 100
    iget-object v4, p0, Ladn;->i:Landroid/util/SparseArray;

    const/4 v5, 0x6

    const-string/jumbo v6, "xiaolin"

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 101
    iget-object v4, p0, Ladn;->i:Landroid/util/SparseArray;

    const/4 v5, 0x7

    const-string/jumbo v6, "xiaofeng"

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 102
    iget-object v4, p0, Ladn;->i:Landroid/util/SparseArray;

    const/16 v5, 0x8

    const-string/jumbo v6, "nannan"

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 104
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v4, p0, Ladn;->l:Landroid/util/SparseIntArray;

    .line 105
    iget-object v4, p0, Ladn;->l:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v8, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 106
    iget-object v4, p0, Ladn;->l:Landroid/util/SparseIntArray;

    const/16 v5, 0xb

    invoke-virtual {v4, v7, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 107
    iget-object v4, p0, Ladn;->l:Landroid/util/SparseIntArray;

    const/16 v5, 0x19

    invoke-virtual {v4, v10, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 108
    iget-object v4, p0, Ladn;->l:Landroid/util/SparseIntArray;

    const/16 v5, 0x18

    invoke-virtual {v4, v11, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 109
    iget-object v4, p0, Ladn;->l:Landroid/util/SparseIntArray;

    const/16 v5, 0xe

    invoke-virtual {v4, v9, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 110
    iget-object v4, p0, Ladn;->l:Landroid/util/SparseIntArray;

    const/4 v5, 0x5

    const/16 v6, 0xf

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 111
    iget-object v4, p0, Ladn;->l:Landroid/util/SparseIntArray;

    const/4 v5, 0x6

    const/16 v6, 0x16

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 112
    iget-object v4, p0, Ladn;->l:Landroid/util/SparseIntArray;

    const/4 v5, 0x7

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 113
    iget-object v4, p0, Ladn;->l:Landroid/util/SparseIntArray;

    const/16 v5, 0x8

    const/4 v6, 0x7

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 115
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Ladn;->j:Landroid/util/SparseArray;

    .line 116
    iget-object v4, p0, Ladn;->j:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 117
    iget-object v4, p0, Ladn;->j:Landroid/util/SparseArray;

    const v5, 0x40470a3d    # 3.11f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 118
    iget-object v4, p0, Ladn;->j:Landroid/util/SparseArray;

    const v5, 0x403d70a4    # 2.96f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v10, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 119
    iget-object v4, p0, Ladn;->j:Landroid/util/SparseArray;

    const v5, 0x403eb852    # 2.98f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v11, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 120
    iget-object v4, p0, Ladn;->j:Landroid/util/SparseArray;

    const v5, 0x4037ae14    # 2.87f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v9, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 121
    iget-object v4, p0, Ladn;->j:Landroid/util/SparseArray;

    const/4 v5, 0x5

    const v6, 0x404ccccd    # 3.2f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 122
    iget-object v4, p0, Ladn;->j:Landroid/util/SparseArray;

    const/4 v5, 0x6

    const v6, 0x407e147b    # 3.97f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 123
    iget-object v4, p0, Ladn;->j:Landroid/util/SparseArray;

    const/4 v5, 0x7

    const/high16 v6, 0x40600000    # 3.5f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 124
    iget-object v4, p0, Ladn;->j:Landroid/util/SparseArray;

    const/16 v5, 0x8

    const v6, 0x406147ae    # 3.52f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 127
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Ladn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 128
    iget-object v4, p0, Ladn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 129
    const-string/jumbo v4, "image.ic_anchor_default_dial"

    invoke-direct {p0, v8, v4, v7}, Ladn;->a(ILjava/lang/String;Z)V

    .line 131
    const/4 v4, 0x5

    const-string/jumbo v5, "image.ic_anchor_yueyu_dial"

    invoke-direct {p0, v4, v5, v7}, Ladn;->a(ILjava/lang/String;Z)V

    .line 133
    const-string/jumbo v4, "image.ic_anchor_henan_dial"

    invoke-direct {p0, v10, v4, v7}, Ladn;->a(ILjava/lang/String;Z)V

    .line 135
    const-string/jumbo v4, "image.ic_anchor_sichuan_dial"

    invoke-direct {p0, v9, v4, v7}, Ladn;->a(ILjava/lang/String;Z)V

    .line 137
    const-string/jumbo v4, "image.ic_anchor_hunan_dial"

    invoke-direct {p0, v11, v4, v7}, Ladn;->a(ILjava/lang/String;Z)V

    .line 139
    const-string/jumbo v4, "image.ic_anchor_dongbei_dial"

    invoke-direct {p0, v7, v4, v7}, Ladn;->a(ILjava/lang/String;Z)V

    .line 143
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 144
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 145
    iget-object v4, p0, Ladn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/dial/specific/SpecificVoice;

    .line 147
    .local v2, "specificVoice":Lcom/iflytek/viafly/dial/specific/SpecificVoice;
    :try_start_0
    invoke-virtual {v2}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/dial/specific/SpecificVoice;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "SpecificVoiceHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readResouceList: e ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "specificVoice":Lcom/iflytek/viafly/dial/specific/SpecificVoice;
    :cond_1
    return-void
.end method

.method public a(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/iflytek/viafly/dial/specific/SpecificVoice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "mResourceList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/iflytek/viafly/dial/specific/SpecificVoice;>;"
    iput-object p1, p0, Ladn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 162
    invoke-static {p1}, Lcom/iflytek/viafly/dial/specific/SpecificVoiceUtil;->a(Ljava/util/List;)V

    .line 163
    return-void
.end method

.method public a(ILandroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer$OnErrorListener;)Z
    .locals 10
    .param p1, "type"    # I
    .param p2, "completionListener"    # Landroid/media/MediaPlayer$OnCompletionListener;
    .param p3, "errorListener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    const/4 v9, 0x0

    .line 173
    const/4 v8, 0x0

    .line 174
    .local v8, "ringToneFd":Landroid/content/res/AssetFileDescriptor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "dial"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ladn;->i:Landroid/util/SparseArray;

    .line 175
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".ogg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 178
    .local v7, "fileName":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Ladn;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 183
    if-nez v8, :cond_0

    move v0, v9

    .line 214
    :goto_0
    return v0

    .line 179
    :catch_0
    move-exception v6

    .line 180
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "SpecificVoiceHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAudition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 181
    goto :goto_0

    .line 186
    .end local v6    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v0, p0, Ladn;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 188
    :try_start_1
    iget-object v0, p0, Ladn;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 189
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 188
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 200
    iget-object v0, p0, Ladn;->g:Landroid/media/MediaPlayer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 202
    :try_start_2
    iget-object v0, p0, Ladn;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 211
    iget-object v0, p0, Ladn;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 212
    iget-object v0, p0, Ladn;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 213
    iget-object v0, p0, Ladn;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 214
    const/4 v0, 0x1

    goto :goto_0

    .line 190
    :catch_1
    move-exception v6

    .line 191
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v0, "SpecificVoiceHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAudition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 192
    goto :goto_0

    .line 193
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    .line 194
    .local v6, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v0, "SpecificVoiceHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAudition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 195
    goto/16 :goto_0

    .line 196
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v6

    .line 197
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "SpecificVoiceHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAudition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 198
    goto/16 :goto_0

    .line 203
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 204
    .local v6, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v0, "SpecificVoiceHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAudition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 205
    goto/16 :goto_0

    .line 206
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v6

    .line 207
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v0, "SpecificVoiceHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAudition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 208
    goto/16 :goto_0
.end method

.method public b()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/iflytek/viafly/dial/specific/SpecificVoice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Ladn;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Ladn;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 224
    return-void
.end method
