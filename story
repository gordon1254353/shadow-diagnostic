<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Story — How I Came Back to Life</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            background: #0a0a0f;
            color: #e0e0e0;
            line-height: 1.85;
            min-height: 100vh;
        }
        
        .container {
            max-width: 680px;
            margin: 0 auto;
            padding: 60px 24px;
        }

        /* Back link */
        .back-link {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            color: #888;
            text-decoration: none;
            margin-bottom: 40px;
            font-size: 0.95rem;
            transition: color 0.2s;
        }

        .back-link:hover {
            color: #6366f1;
        }

        /* Header */
        .header {
            margin-bottom: 48px;
        }

        .header h1 {
            font-size: 2.2rem;
            font-weight: 600;
            line-height: 1.3;
            margin-bottom: 16px;
            background: linear-gradient(135deg, #e0e0e0, #a0a0a0);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .header .subtitle {
            color: #888;
            font-size: 1.1rem;
            font-style: italic;
        }

        /* Content */
        .content p {
            margin-bottom: 20px;
            color: #c0c0c0;
            font-size: 1.05rem;
        }

        .content .highlight {
            color: #a78bfa;
            font-weight: 500;
        }

        .content .strong {
            color: #e0e0e0;
            font-weight: 600;
        }

        /* Divider */
        .divider {
            text-align: center;
            margin: 40px 0;
            color: #444;
            letter-spacing: 8px;
        }

        /* Quote block */
        .quote-block {
            background: #111118;
            border-left: 3px solid #6366f1;
            padding: 24px 28px;
            margin: 32px 0;
            border-radius: 0 12px 12px 0;
        }

        .quote-block p {
            margin-bottom: 12px;
            color: #d0d0d0;
        }

        .quote-block p:last-child {
            margin-bottom: 0;
        }

        /* Results section */
        .results {
            background: linear-gradient(135deg, rgba(99, 102, 241, 0.1), rgba(139, 92, 246, 0.1));
            border: 1px solid rgba(99, 102, 241, 0.2);
            border-radius: 16px;
            padding: 28px;
            margin: 40px 0;
        }

        .results h3 {
            color: #a78bfa;
            font-size: 1.1rem;
            margin-bottom: 16px;
        }

        .results ul {
            list-style: none;
        }

        .results li {
            padding: 10px 0;
            padding-left: 28px;
            position: relative;
            color: #c0c0c0;
        }

        .results li::before {
            content: "→";
            position: absolute;
            left: 0;
            color: #6366f1;
        }

        /* CTA Section */
        .cta-section {
            margin-top: 56px;
            padding: 40px 32px;
            background: #111118;
            border: 1px solid #2a2a3a;
            border-radius: 20px;
            text-align: center;
        }

        .cta-section h3 {
            font-size: 1.4rem;
            margin-bottom: 12px;
            color: #e0e0e0;
        }

        .cta-section p {
            color: #888;
            margin-bottom: 24px;
            font-size: 1rem;
        }

        .cta-btn {
            display: inline-block;
            padding: 16px 40px;
            background: linear-gradient(135deg, #6366f1, #8b5cf6);
            color: white;
            text-decoration: none;
            border-radius: 12px;
            font-size: 1.1rem;
            font-weight: 600;
            transition: all 0.3s;
            box-shadow: 0 4px 20px rgba(99, 102, 241, 0.4);
        }

        .cta-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 30px rgba(99, 102, 241, 0.5);
        }

        .cta-note {
            margin-top: 16px;
            font-size: 0.9rem;
            color: #666;
        }

        /* Course CTA */
        .course-section {
            margin-top: 32px;
            padding: 32px;
            background: linear-gradient(135deg, rgba(16, 185, 129, 0.1), rgba(16, 185, 129, 0.05));
            border: 1px solid rgba(16, 185, 129, 0.2);
            border-radius: 16px;
            text-align: center;
        }

        .course-section p {
            color: #888;
            margin-bottom: 16px;
        }

        .course-btn {
            display: inline-block;
            padding: 14px 32px;
            background: rgba(16, 185, 129, 0.15);
            border: 1px solid rgba(16, 185, 129, 0.3);
            color: #6ee7b7;
            text-decoration: none;
            border-radius: 10px;
            font-weight: 600;
            transition: all 0.2s;
        }

        .course-btn:hover {
            background: rgba(16, 185, 129, 0.25);
        }

        /* Telegram */
        .telegram-section {
            text-align: center;
            margin-top: 32px;
            padding: 20px;
            background: #111118;
            border: 1px solid #2a2a3a;
            border-radius: 12px;
        }

        .telegram-section p {
            color: #888;
            margin-bottom: 12px;
        }

        .telegram-btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 10px 20px;
            background: rgba(99, 102, 241, 0.15);
            border: 1px solid rgba(99, 102, 241, 0.3);
            border-radius: 8px;
            color: #818cf8;
            text-decoration: none;
            font-weight: 500;
            transition: all 0.2s;
        }

        .telegram-btn:hover {
            background: rgba(99, 102, 241, 0.25);
        }

        @media (max-width: 600px) {
            .container {
                padding: 40px 20px;
            }

            .header h1 {
                font-size: 1.8rem;
            }

            .cta-section, .course-section {
                padding: 28px 24px;
            }
        }
    </style>
</head>
<body>

<div class="container">
    
    <a href="#" class="back-link" onclick="history.back()">← Back</a>

    <div class="header">
        <h1>How I came back to life after years of just existing</h1>
        <p class="subtitle">This isn't a sales pitch. Just my story.</p>
    </div>

    <div class="content">
        
        <p>For years, I wasn't really living — <span class="highlight">I was existing</span>.</p>

        <p>Depression, medication, feeling stuck in a hole with no way out. Dead-end job, no prospects, every day the same. Waking up wondering what's even the point.</p>

        <p>I tried everything. Visualization, affirmations, meditation, self-help books — none of it worked. Or it would work for a couple days, then everything would slide back to where it was.</p>

        <p>At some point I just accepted that this was my life.</p>

        <div class="divider">• • •</div>

        <p>Then I came across a method. I'll be honest — I was skeptical. After all the failures, I didn't have much faith left.</p>

        <p>But I had nothing to lose, so I tried it.</p>

        <p>First few days, nothing special. Did the practice, wasn't sure if anything was happening.</p>

        <p>But about a week in, I noticed something strange — <span class="highlight">things felt lighter</span>. Not euphoria or anything dramatic. Just that black heaviness that had been pressing down on me for years started to lift.</p>

        <div class="quote-block">
            <p><span class="strong">Two weeks in, the depression was gone.</span></p>
            <p>Just gone. No medication, no weekly therapy sessions.</p>
            <p>I didn't even understand how it happened.</p>
        </div>

        <p>And then things started happening that I couldn't have imagined.</p>

        <div class="results">
            <h3>What changed:</h3>
            <ul>
                <li><span class="strong">Got a job offer.</span> Senior position, good salary. No prior experience in that role. A month earlier I was barely getting by.</li>
                <li><span class="strong">People started showing up.</span> Opportunities. Ideas. Something happening every day.</li>
                <li><span class="strong">Preparing to study abroad.</span> A few years ago I couldn't even think about it. Now it's just the next step.</li>
            </ul>
        </div>

        <p>At first I thought — coincidences. But when it keeps happening again and again, you realize it's not coincidence.</p>

        <p><span class="highlight">I came back to life.</span> There's no other way to put it.</p>

        <p>After years of just existing — I started living again. Interest came back. Energy came back. The desire to do things, to move forward.</p>

        <div class="divider">• • •</div>

        <p><span class="strong">Why am I sharing this?</span></p>

        <p>Not to sell you something. Honestly.</p>

        <p>I created this course because I want what helped me to help others. Because I know what it's like to sit in that hole and see no way out.</p>

        <p>And I know there is a way out.</p>

        <p>I'm not promising magic pills. This isn't "read it and everything changes." It's a practice you actually have to do.</p>

        <p>But it works. It worked for me. It's worked for others who tried it.</p>

        <p><span class="highlight">If you're in the place I was — try it.</span></p>

        <p>If I could climb out of a hole that deep, so can you.</p>

    </div>

    <!-- Diagnostic CTA -->
    <div class="cta-section">
        <h3>Want to see what's blocking you?</h3>
        <p>Take the free diagnostic. 3 minutes. Shows your pattern.</p>
        <a href="https://gordon1254353.github.io/shadow-diagnostic/" class="cta-btn">Take Free Diagnostic →</a>
        <p class="cta-note">No email required. No catch. Just clarity.</p>
    </div>

    <!-- Course CTA -->
    <div class="course-section">
        <p>Ready to start working on it?</p>
        <a href="https://app.lava.top/products/91f0a61b-4cc9-4fff-9a5e-cedfcc63b48b" class="course-btn">Get the Full Course →</a>
    </div>

    <!-- Telegram -->
    <div class="telegram-section">
        <p>Have questions? Don't be shy — I respond to everyone.</p>
        <a href="https://t.me/pro_logic12" class="telegram-btn">💬 Write me on Telegram</a>
    </div>

</div>

</body>
</html>
