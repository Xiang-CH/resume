# Chen Xiang 陈想
[<u>xiiang.ch@gmail.com</u>](mailto:xiiang.ch@gmail.com) | [<u>cxiang.site</u>](https://cxiang.site) | [<u>github.com/Xiang-CH</u>](https://github.com/Xiang-CH)

## Profile

- Seeking roles in AI applications, LLM engineering, and full-stack development. Specialized in LLM application engineering including Agents, RAG, and MCP; most proficient in Python and TypeScript, with end-to-end project experience in data processing, full-stack development, databases, cloud deployment, and CI/CD. Proficient in Git-based collaboration and AI-assisted development workflows, with open-source contributions.

## Education

- **[The University of Hong Kong](https://hku.hk/)** | Hong Kong  
  *Master of Science in Computer Science* | *Sep. 2025 – Nov. 2026 (Expected)*
  - GPA: 3.39/4.3; Relevant Coursework: Quantum Computing, Data Mining, Information Security, Big Data Management
- *Bachelor of Engineering in Computer Science* | *Sep. 2021 – Jun. 2025*
  - GPA: 3.56/4.3; First Class Honours, Dean’s Honours List
  - Relevant Coursework: Data Structures, Algorithms, Software Engineering, Databases, Machine Learning, Deep Learning, Natural Language Processing

## Experience

- **[Apple Inc.](https://www.apple.com/)**  
  *AI Development Intern* | *May 2026 – Sep. 2026 (Expected)*
  - Led the delivery of a fault-monitoring and analysis Agent plugin for test engineers from requirements interviews and architecture design to deployment, packaging it as an Agent Skill; built a companion MCP Server, CLI tool, and backend system, and integrated a Human-in-the-Loop ticketing workflow supporting manual ticket creation and linking.
  - Designed a custom MCP Server for MB-level test data from the iPhone production line validation phase, encapsulating the original multi-step, error-prone data fetching process into a single tool call to improve success rate, while processing data locally to keep raw data out of the Agent context; combined multiple sub-agents running site-parallel error attribution analysis, compressing the daily report generation cycle from several days to about one hour.
  - Set up the CI/CD release pipeline for the Skill repository, including AI-powered PR review, automated artifact packaging and release, one-line-command installation, and an agent self-update mechanism.
- **[The University of Hong Kong](https://www.hku.hk/)** | Hong Kong  
  *Research Assistant* | *Jul 2025 – Present*
  - Designing legal AI tools for HKU Law School teaching scenarios and developing and maintaining the AI legal research platform for the Law and Technology Centre.
  - Maintaining and optimizing the AI [<u>Sentencing Predictor</u>](https://ai.hklii.hk/dt-predictor/) on [<u>HKLII</u>](https://hklii.hk/): using LLMs to extract structured information from over 2,000 judgments with full manual review, building a review platform used by over 40 law students, and conducting statistical analysis and predictive modeling on the structured data; the model’s prediction error is within 8 months, with continuous adaptation to the latest Hong Kong legislation. ([<u>project repository</u>](https://github.com/Xiang-CH/hklii-drug-trafficking-sentence-predictor))
- *Student Research Assistant* | *Jun 2023 – May 2024, Sep 2024 – Jul 2025*
  - Designed and led multiple hands-on AI workshops at the HKU Makerspace (Innovation Wing), covering building chatbots with Azure AI services and developing multi-modal Retrieval-Augmented Generation (RAG) applications with layout detection for document understanding.
  - Participated in cross-departmental student AI projects, including [<u>CLIC-Search</u>](https://clic-search.vercel.app/): a semantic search engine for the Community Legal Information Centre, and a multi-modal history research assistant.
- **[iFLYTEK Co., Ltd.](https://www.iflytek.com/)** | Shenzhen  
  *Assistant Software Development Engineer* | *Jun 2024 – Aug 2024*
  - Contributed to the agile development of AI English-speaking tutor and AI picture book companion LLM applications in the education product line, designing and maintaining application workflows with *Node-RED*; automated data engineering workflows for model fine-tuning with *Python* and adapted product feature requirements through LoRA fine-tuning.
  - Built and refined an LLM-as-a-Judge based evaluation pipeline to help screen and analyze bad cases, identify problem types, and iterate on prompts, completing a closed loop from bad case discovery and attribution to prompt optimization.

## Projects

- **[<u>CLIC-Chat</u>](https://clic.cxiang.site/search)** | *Next.js, Prisma, Azure, LLM, RAG*
  - Developed a full-stack AI web application for Hong Kong legal content Q&A, building the system architecture with *Next.js* and *Prisma*.
  - Parsed and cleaned Hong Kong legal data sources, including legislation, judgments, and legal articles, extracting structured information and building a relational database.
  - Performed semantic chunking and vectorization of unstructured legal text, building a hybrid vector + keyword (BM25) retrieval index on *Azure AI Search*.
  - Implemented a RAG-based Q&A system featuring query expansion, hybrid retrieval, relationship information extraction, and reranking, forming a complete pipeline from data processing and retrieval to generation.
- **[<u>zhipu-ai-provider</u>](https://github.com/Xiang-CH/zhipu-ai-provider)** | *Vercel AI SDK, TypeScript*
  - Open-sourced and maintained a Vercel AI SDK provider for Zhipu (Z.ai) GLM series models, supporting text generation, streaming output, tool calling, multimodal, reasoning, and Embedding/image generation capabilities.
  - Published to npm with over [<u>230,000 downloads</u>](https://npm-stat.com/charts.html?package=zhipu-ai-provider&from=2025-03-01), widely used in AI projects across the TypeScript ecosystem.
- See more at: [**<u>cxiang.site/project</u>**](https://cxiang.site/project)

## Technical Skills

**AI / LLM**: RAG, Agent, MCP, LLM-as-a-Judge, Prompt Engineering, LoRA, LangChain, Azure AI Search, Vercel AI SDK, OpenAI API, Dify, n8n  
**Languages**: TypeScript, JavaScript, Python, SQL, HTML/CSS  
**Frameworks**: Node.js, Next.js, React, Vue.js, TanStack, Flask, FastAPI, Tailwind CSS, Prisma, Chrome Extensions  
**Databases**: MS-SQL, MongoDB, PostgreSQL, MySQL, ChromaDB  
**Tools and Deployment**: Git, GitHub, Docker, Linux, Azure, AWS, Alibaba Cloud, Cloudflare, Vercel, Postman, Node-RED, Clerk  
**Libraries**: Pandas, NumPy, Matplotlib, PyTorch, Scikit-learn, BeautifulSoup, Selenium
