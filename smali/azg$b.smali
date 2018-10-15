.class Lazg$b;
.super Ljava/lang/Object;
.source "CpuUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lazg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-wide v0, p0, Lazg$b;->b:J

    .line 132
    iput-wide v0, p0, Lazg$b;->a:J

    .line 133
    iput-wide v0, p0, Lazg$b;->c:J

    .line 134
    return-void
.end method

.method private b()V
    .locals 44

    .prologue
    .line 151
    const-string/jumbo v42, "/proc/stat"

    invoke-static/range {v42 .. v42}, Lazg;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, "s":Ljava/lang/String;
    const-string/jumbo v42, " "

    move-object/from16 v0, v42

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "as":[Ljava/lang/String;
    const/16 v42, 0x2

    aget-object v42, v4, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 154
    .local v8, "l":J
    const/16 v42, 0x3

    aget-object v42, v4, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 155
    .local v10, "l1":J
    add-long v26, v8, v10

    .line 156
    .local v26, "l2":J
    const/16 v42, 0x4

    aget-object v42, v4, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 157
    .local v28, "l3":J
    add-long v30, v26, v28

    .line 158
    .local v30, "l4":J
    const/16 v42, 0x6

    aget-object v42, v4, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    .line 159
    .local v32, "l5":J
    add-long v34, v30, v32

    .line 160
    .local v34, "l6":J
    const/16 v42, 0x7

    aget-object v42, v4, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v36

    .line 161
    .local v36, "l7":J
    add-long v38, v34, v36

    .line 162
    .local v38, "l8":J
    const/16 v42, 0x8

    aget-object v42, v4, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v40

    .line 163
    .local v40, "l9":J
    add-long v12, v38, v40

    .line 164
    .local v12, "l10":J
    const/16 v42, 0x5

    aget-object v42, v4, v42

    invoke-static/range {v42 .. v42}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 165
    .local v14, "l11":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lazg$b;->b:J

    move-wide/from16 v16, v0

    .line 166
    .local v16, "l12":J
    sub-long v42, v12, v16

    move-wide/from16 v0, v42

    long-to-float v0, v0

    move/from16 v42, v0

    const/high16 v43, 0x42c80000    # 100.0f

    mul-float v5, v42, v43

    .line 167
    .local v5, "f":F
    move-object/from16 v0, p0

    iget-wide v0, v0, Lazg$b;->b:J

    move-wide/from16 v18, v0

    .line 168
    .local v18, "l13":J
    sub-long v42, v12, v18

    add-long v20, v42, v14

    .line 169
    .local v20, "l14":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lazg$b;->a:J

    move-wide/from16 v22, v0

    .line 170
    .local v22, "l15":J
    sub-long v42, v20, v22

    move-wide/from16 v0, v42

    long-to-float v6, v0

    .line 171
    .local v6, "f1":F
    div-float v42, v5, v6

    move/from16 v0, v42

    float-to-long v0, v0

    move-wide/from16 v24, v0

    .line 172
    .local v24, "l16":J
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lazg$b;->c:J

    .line 173
    move-object/from16 v0, p0

    iput-wide v12, v0, Lazg$b;->b:J

    .line 174
    move-object/from16 v0, p0

    iput-wide v14, v0, Lazg$b;->a:J

    .line 175
    return-void
.end method


# virtual methods
.method public a()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x64

    const-wide/16 v4, 0x0

    .line 137
    :try_start_0
    invoke-direct {p0}, Lazg$b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    iget-wide v2, p0, Lazg$b;->c:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 142
    iput-wide v4, p0, Lazg$b;->c:J

    .line 144
    :cond_0
    iget-wide v2, p0, Lazg$b;->c:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 145
    iput-wide v6, p0, Lazg$b;->c:J

    .line 147
    :cond_1
    iget-wide v2, p0, Lazg$b;->c:J

    return-wide v2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "CpuUtil"

    const-string/jumbo v2, "getUsage()"

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
