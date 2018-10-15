.class public Lakc;
.super Lajv;
.source "WeatherForecast.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lakb;

.field private f:Laka;

.field private g:Lajz;

.field private h:Lajz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lajv;-><init>()V

    .line 20
    const-string/jumbo v0, "Forecasts"

    iput-object v0, p0, Lakc;->a:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 38
    invoke-direct {p0}, Lajv;-><init>()V

    .line 20
    const-string/jumbo v0, "Forecasts"

    iput-object v0, p0, Lakc;->a:Ljava/lang/String;

    .line 39
    invoke-virtual {p0, p1}, Lakc;->a(Lorg/json/JSONObject;)V

    .line 40
    return-void
.end method

.method private f(Ljava/lang/String;)I
    .locals 1
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 212
    const-string/jumbo v0, "\u9635\u96e8\uff1b\u5c0f\u96e8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const v0, 0x7f020283

    .line 262
    :goto_0
    return v0

    .line 214
    :cond_0
    const-string/jumbo v0, "\u4e2d\u96e8\uff1b\u5c0f\u96e8-\u4e2d\u96e8"

    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const v0, 0x7f020287

    goto :goto_0

    .line 217
    :cond_1
    const-string/jumbo v0, "\u4e2d\u96e8-\u5927\u96e8\uff1b\u5927\u96e8"

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    const v0, 0x7f020277

    goto :goto_0

    .line 220
    :cond_2
    const-string/jumbo v0, "\u5927\u66b4\u96e8-\u7279\u5927\u66b4\u96e8\uff1b\u7279\u5927\u66b4\u96e8\uff1b\u5927\u96e8-\u66b4\u96e8\uff1b\u5927\u66b4\u96e8\uff1b\u66b4\u96e8-\u5927\u66b4\u96e8\uff1b\u66b4\u96e8"

    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    const v0, 0x7f02027d

    goto :goto_0

    .line 223
    :cond_3
    const-string/jumbo v0, "\u51bb\u96e8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    const v0, 0x7f020281

    goto :goto_0

    .line 225
    :cond_4
    const-string/jumbo v0, "\u96f7\u9635\u96e8"

    .line 226
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 227
    const v0, 0x7f020293

    goto :goto_0

    .line 228
    :cond_5
    const-string/jumbo v0, "\u96f7\u9635\u96e8\u4f34\u6709\u51b0\u96f9"

    .line 229
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 230
    const v0, 0x7f020295

    goto :goto_0

    .line 231
    :cond_6
    const-string/jumbo v0, "\u96e8\u5939\u96ea"

    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 233
    const v0, 0x7f02028d

    goto :goto_0

    .line 234
    :cond_7
    const-string/jumbo v0, "\u9635\u96ea\uff1b\u5c0f\u96ea"

    .line 235
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 236
    const v0, 0x7f020285

    goto :goto_0

    .line 237
    :cond_8
    const-string/jumbo v0, "\u4e2d\u96ea\uff1b\u5c0f\u96ea-\u4e2d\u96ea"

    .line 238
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 239
    const v0, 0x7f020289

    goto :goto_0

    .line 240
    :cond_9
    const-string/jumbo v0, "\u4e2d\u96ea-\u5927\u96ea\uff1b\u5927\u96ea"

    .line 241
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 242
    const v0, 0x7f020279

    goto/16 :goto_0

    .line 243
    :cond_a
    const-string/jumbo v0, "\u5927\u96ea-\u66b4\u96ea\uff1b\u66b4\u96ea"

    .line 244
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 245
    const v0, 0x7f02027f

    goto/16 :goto_0

    .line 246
    :cond_b
    const-string/jumbo v0, "\u6674"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 247
    const v0, 0x7f020291

    goto/16 :goto_0

    .line 248
    :cond_c
    const-string/jumbo v0, "\u591a\u4e91"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 249
    const v0, 0x7f020271

    goto/16 :goto_0

    .line 250
    :cond_d
    const-string/jumbo v0, "\u9634"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 251
    const v0, 0x7f02028b

    goto/16 :goto_0

    .line 252
    :cond_e
    const-string/jumbo v0, "\u96fe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 253
    const v0, 0x7f020275

    goto/16 :goto_0

    .line 254
    :cond_f
    const-string/jumbo v0, "\u6c99\u5c18\u66b4\uff1b\u6d6e\u5c18\uff1b\u626c\u6c99\uff1b\u6c99\u5c18"

    .line 255
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 256
    const v0, 0x7f02028f

    goto/16 :goto_0

    .line 257
    :cond_10
    const-string/jumbo v0, "\u973e\uff1b\u96fe\u973e"

    .line 258
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 259
    const v0, 0x7f02027b

    goto/16 :goto_0

    .line 262
    :cond_11
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method private g(Ljava/lang/String;)I
    .locals 1
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 273
    const-string/jumbo v0, "\u9635\u96e8\uff1b\u5c0f\u96e8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const v0, 0x7f020284

    .line 323
    :goto_0
    return v0

    .line 275
    :cond_0
    const-string/jumbo v0, "\u4e2d\u96e8\uff1b\u5c0f\u96e8-\u4e2d\u96e8"

    .line 276
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    const v0, 0x7f020288

    goto :goto_0

    .line 278
    :cond_1
    const-string/jumbo v0, "\u4e2d\u96e8-\u5927\u96e8\uff1b\u5927\u96e8"

    .line 279
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    const v0, 0x7f020278

    goto :goto_0

    .line 281
    :cond_2
    const-string/jumbo v0, "\u5927\u66b4\u96e8-\u7279\u5927\u66b4\u96e8\uff1b\u7279\u5927\u66b4\u96e8\uff1b\u5927\u96e8-\u66b4\u96e8\uff1b\u5927\u66b4\u96e8\uff1b\u66b4\u96e8-\u5927\u66b4\u96e8\uff1b\u66b4\u96e8"

    .line 282
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    const v0, 0x7f02027e

    goto :goto_0

    .line 284
    :cond_3
    const-string/jumbo v0, "\u51bb\u96e8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 285
    const v0, 0x7f020282

    goto :goto_0

    .line 286
    :cond_4
    const-string/jumbo v0, "\u96f7\u9635\u96e8"

    .line 287
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 288
    const v0, 0x7f020294

    goto :goto_0

    .line 289
    :cond_5
    const-string/jumbo v0, "\u96f7\u9635\u96e8\u4f34\u6709\u51b0\u96f9"

    .line 290
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 291
    const v0, 0x7f020296

    goto :goto_0

    .line 292
    :cond_6
    const-string/jumbo v0, "\u96e8\u5939\u96ea"

    .line 293
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 294
    const v0, 0x7f02028e

    goto :goto_0

    .line 295
    :cond_7
    const-string/jumbo v0, "\u9635\u96ea\uff1b\u5c0f\u96ea"

    .line 296
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 297
    const v0, 0x7f020286

    goto :goto_0

    .line 298
    :cond_8
    const-string/jumbo v0, "\u4e2d\u96ea\uff1b\u5c0f\u96ea-\u4e2d\u96ea"

    .line 299
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 300
    const v0, 0x7f02028a

    goto :goto_0

    .line 301
    :cond_9
    const-string/jumbo v0, "\u4e2d\u96ea-\u5927\u96ea\uff1b\u5927\u96ea"

    .line 302
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 303
    const v0, 0x7f02027a

    goto/16 :goto_0

    .line 304
    :cond_a
    const-string/jumbo v0, "\u5927\u96ea-\u66b4\u96ea\uff1b\u66b4\u96ea"

    .line 305
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 306
    const v0, 0x7f020280

    goto/16 :goto_0

    .line 307
    :cond_b
    const-string/jumbo v0, "\u6674"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 308
    const v0, 0x7f020292

    goto/16 :goto_0

    .line 309
    :cond_c
    const-string/jumbo v0, "\u591a\u4e91"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 310
    const v0, 0x7f020272

    goto/16 :goto_0

    .line 311
    :cond_d
    const-string/jumbo v0, "\u9634"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 312
    const v0, 0x7f02028c

    goto/16 :goto_0

    .line 313
    :cond_e
    const-string/jumbo v0, "\u96fe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 314
    const v0, 0x7f020276

    goto/16 :goto_0

    .line 315
    :cond_f
    const-string/jumbo v0, "\u6c99\u5c18\u66b4\uff1b\u6d6e\u5c18\uff1b\u626c\u6c99\uff1b\u6c99\u5c18"

    .line 316
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 317
    const v0, 0x7f020290

    goto/16 :goto_0

    .line 318
    :cond_10
    const-string/jumbo v0, "\u973e\uff1b\u96fe\u973e"

    .line 319
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 320
    const v0, 0x7f02027c

    goto/16 :goto_0

    .line 323
    :cond_11
    const/4 v0, -0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lajz;Z)I
    .locals 10
    .param p1, "condition"    # Lajz;
    .param p2, "isSmall"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, -0x1

    .line 161
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lajz;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v4

    .line 202
    :goto_0
    return v3

    .line 164
    :cond_1
    invoke-virtual {p1}, Lajz;->a()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "image":Ljava/lang/String;
    const-string/jumbo v5, "Forecasts"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u5929\u6c14\u63cf\u8ff0\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, "imageTemp":[Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 169
    invoke-direct {p0, v1}, Lakc;->g(Ljava/lang/String;)I

    move-result v3

    .line 173
    .local v3, "newImageId":I
    :goto_1
    if-ne v4, v3, :cond_2

    .line 174
    const-string/jumbo v5, "\u5230"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 175
    const-string/jumbo v4, "\u5230"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 176
    array-length v4, v2

    if-ne v4, v9, :cond_2

    .line 177
    const-string/jumbo v4, "Forecasts"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u63cf\u8ff0\u62c6\u5206\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-eqz p2, :cond_4

    .line 179
    aget-object v4, v2, v8

    invoke-direct {p0, v4}, Lakc;->g(Ljava/lang/String;)I

    move-result v3

    .line 201
    :cond_2
    :goto_2
    const-string/jumbo v4, "Forecasts"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleWeatherImg ResourceId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    .end local v3    # "newImageId":I
    :cond_3
    invoke-direct {p0, v1}, Lakc;->f(Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "newImageId":I
    goto :goto_1

    .line 181
    :cond_4
    aget-object v4, v2, v8

    invoke-direct {p0, v4}, Lakc;->f(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 184
    :cond_5
    const-string/jumbo v5, "\u8f6c"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 185
    const-string/jumbo v5, "\u8f6c"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 186
    array-length v5, v2

    if-ne v9, v5, :cond_2

    .line 187
    array-length v6, v2

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_2

    aget-object v0, v2, v5

    .line 188
    .local v0, "emp":Ljava/lang/String;
    const-string/jumbo v7, "Forecasts"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u63cf\u8ff0\u62c6\u5206\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-eqz p2, :cond_6

    .line 190
    invoke-direct {p0, v0}, Lakc;->g(Ljava/lang/String;)I

    move-result v3

    .line 194
    :goto_4
    if-ne v4, v3, :cond_2

    .line 187
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 192
    :cond_6
    invoke-direct {p0, v0}, Lakc;->f(Ljava/lang/String;)I

    move-result v3

    goto :goto_4
.end method

.method public a()Lajz;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lakc;->g:Lajz;

    return-object v0
.end method

.method public a(Lajz;)V
    .locals 0
    .param p1, "condition"    # Lajz;

    .prologue
    .line 50
    iput-object p1, p0, Lakc;->g:Lajz;

    .line 51
    return-void
.end method

.method public a(Laka;)V
    .locals 0
    .param p1, "dateTime"    # Laka;

    .prologue
    .line 102
    iput-object p1, p0, Lakc;->f:Laka;

    .line 103
    return-void
.end method

.method public a(Lakb;)V
    .locals 0
    .param p1, "pm25"    # Lakb;

    .prologue
    .line 86
    iput-object p1, p0, Lakc;->e:Lakb;

    .line 87
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lakc;->b:Ljava/lang/String;

    .line 63
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string/jumbo v0, "high"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lakc;->c(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v0, "low"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lakc;->b(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v0, "temp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lakc;->a(Ljava/lang/String;)V

    .line 114
    new-instance v0, Lakb;

    const-string/jumbo v1, "pm25"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lakb;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lakc;->a(Lakb;)V

    .line 115
    new-instance v0, Laka;

    const-string/jumbo v1, "datetime"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Laka;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lakc;->a(Laka;)V

    .line 116
    new-instance v0, Lajz;

    const-string/jumbo v1, "condition"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lajz;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lakc;->a(Lajz;)V

    .line 117
    new-instance v0, Lajz;

    const-string/jumbo v1, "current_condition"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lajz;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lakc;->b(Lajz;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lakc;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lajz;)V
    .locals 0
    .param p1, "currentCondition"    # Lajz;

    .prologue
    .line 94
    iput-object p1, p0, Lakc;->h:Lajz;

    .line 95
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1, "low"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lakc;->c:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lakc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1, "high"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lakc;->d:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public d(Ljava/lang/String;)I
    .locals 10
    .param p1, "strPm25Num"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x12c

    const/16 v8, 0xc8

    const/16 v7, 0x96

    const/16 v6, 0x64

    const/16 v5, 0x32

    .line 328
    const/4 v2, -0x1

    .line 330
    .local v2, "intPm25Num":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 335
    :goto_0
    const/4 v0, -0x1

    .line 336
    .local v0, "color":I
    if-ltz v2, :cond_1

    if-gt v2, v5, :cond_1

    .line 337
    const v0, -0x993ed1

    .line 350
    :cond_0
    :goto_1
    return v0

    .line 331
    .end local v0    # "color":I
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Forecasts"

    const-string/jumbo v4, "strPm25Num to int"

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 338
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "color":I
    :cond_1
    if-le v2, v5, :cond_2

    if-gt v2, v6, :cond_2

    .line 339
    const v0, -0xd31f1

    goto :goto_1

    .line 340
    :cond_2
    if-le v2, v6, :cond_3

    if-gt v2, v7, :cond_3

    .line 341
    const v0, -0x568df

    goto :goto_1

    .line 342
    :cond_3
    if-le v2, v7, :cond_4

    if-gt v2, v8, :cond_4

    .line 343
    const v0, -0xfba6

    goto :goto_1

    .line 344
    :cond_4
    if-le v2, v8, :cond_5

    if-gt v2, v9, :cond_5

    .line 345
    const v0, -0x61f518

    goto :goto_1

    .line 346
    :cond_5
    if-le v2, v9, :cond_0

    .line 347
    const v0, -0x48e4ae

    goto :goto_1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lakc;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lakb;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lakc;->e:Lakb;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "strPm25Num"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x12c

    const/16 v8, 0xc8

    const/16 v7, 0x96

    const/16 v6, 0x64

    const/16 v5, 0x32

    .line 354
    const/4 v1, -0x1

    .line 356
    .local v1, "intPm25Num":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 361
    :goto_0
    const-string/jumbo v2, ""

    .line 362
    .local v2, "pm25Des":Ljava/lang/String;
    if-ltz v1, :cond_1

    if-gt v1, v5, :cond_1

    .line 363
    const-string/jumbo v2, "\u7a7a\u6c14\u8d28\u91cf\u4f18"

    .line 376
    :cond_0
    :goto_1
    return-object v2

    .line 357
    .end local v2    # "pm25Des":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Forecasts"

    const-string/jumbo v4, "strPm25Num to int"

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "pm25Des":Ljava/lang/String;
    :cond_1
    if-le v1, v5, :cond_2

    if-gt v1, v6, :cond_2

    .line 365
    const-string/jumbo v2, "\u7a7a\u6c14\u8d28\u91cf\u826f\u597d"

    goto :goto_1

    .line 366
    :cond_2
    if-le v1, v6, :cond_3

    if-gt v1, v7, :cond_3

    .line 367
    const-string/jumbo v2, "\u8f7b\u5ea6\u6c61\u67d3"

    goto :goto_1

    .line 368
    :cond_3
    if-le v1, v7, :cond_4

    if-gt v1, v8, :cond_4

    .line 369
    const-string/jumbo v2, "\u4e2d\u5ea6\u6c61\u67d3"

    goto :goto_1

    .line 370
    :cond_4
    if-le v1, v8, :cond_5

    if-gt v1, v9, :cond_5

    .line 371
    const-string/jumbo v2, "\u91cd\u5ea6\u6c61\u67d3"

    goto :goto_1

    .line 372
    :cond_5
    if-le v1, v9, :cond_0

    .line 373
    const-string/jumbo v2, "\u4e25\u91cd\u6c61\u67d3"

    goto :goto_1
.end method

.method public f()Lajz;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lakc;->h:Lajz;

    return-object v0
.end method

.method public g()Laka;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lakc;->f:Laka;

    return-object v0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 122
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 124
    .local v1, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "high"

    invoke-virtual {p0}, Lakc;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string/jumbo v2, "low"

    invoke-virtual {p0}, Lakc;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string/jumbo v2, "temp"

    invoke-virtual {p0}, Lakc;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    invoke-virtual {p0}, Lakc;->e()Lakb;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 128
    const-string/jumbo v2, "pm25"

    invoke-virtual {p0}, Lakc;->e()Lakb;

    move-result-object v3

    invoke-virtual {v3}, Lakb;->c()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    :goto_0
    invoke-virtual {p0}, Lakc;->g()Laka;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 133
    const-string/jumbo v2, "datetime"

    invoke-virtual {p0}, Lakc;->g()Laka;

    move-result-object v3

    invoke-virtual {v3}, Laka;->d()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    :goto_1
    invoke-virtual {p0}, Lakc;->a()Lajz;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 138
    const-string/jumbo v2, "condition"

    invoke-virtual {p0}, Lakc;->a()Lajz;

    move-result-object v3

    invoke-virtual {v3}, Lajz;->c()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    :goto_2
    invoke-virtual {p0}, Lakc;->f()Lajz;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 143
    const-string/jumbo v2, "current_condition"

    invoke-virtual {p0}, Lakc;->f()Lajz;

    move-result-object v3

    invoke-virtual {v3}, Lajz;->c()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    :goto_3
    return-object v1

    .line 130
    :cond_0
    const-string/jumbo v2, "pm25"

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "Forecasts"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const/4 v1, 0x0

    goto :goto_3

    .line 135
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "datetime"

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 140
    :cond_2
    const-string/jumbo v2, "condition"

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 145
    :cond_3
    const-string/jumbo v2, "current_condition"

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
